//
//  DBFile.swift
//  CodInActSum
//
//  Created by Markus Lu on 22/5/2023.
//

import Foundation
import SQLite

class MyDB{
    var dbFile: String
    
    init() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        self.dbFile = "\(path.first ?? "")/db.sqlite3"
//        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true))
        do {
            let db = try Connection(self.dbFile)
            let users = Table("users")
            let id = Expression<Int64>("id")
            let username = Expression<String>("username")
            let password = Expression<String>("password")
            let email = Expression<String>("email")
            try db.run(users.create(ifNotExists: true) { t in
                t.column(id, primaryKey: true)
                t.column(username, unique: true)
                t.column(email, unique: true, check: email.like("%@%"))
                t.column(password)
            })
           }catch{
               print(error)
           }
    }
    
    func newUser(iname:String, iemail:String, ipassword:String){
        do {
            let db = try Connection(self.dbFile)
            let users = Table("users")
            let id = Expression<Int64>("id")
            let username = Expression<String>("username")
            let password = Expression<String>("password")
            let email = Expression<String>("email")
            let insert = users.insert(username <- iname, email <- iemail, password <- ipassword)
            try  db.run(insert)
            for user in try db.prepare(users) {
                print("id: \(user[id]), username: \(user[username]), email: \(user[email]), password: \(user[password])")
                // id: 1, name: Optional("Alice"), email: alice@mac.com
            }
        }catch{
            print(error)
        }
    }
    
    func deleteAllUsers(){
        do{
            let db = try Connection(self.dbFile)
            let users = Table("users")
            try db.run(users.drop(ifExists: true))
        }catch{
            print(error)
        }
    }
    
    func loginCheck(iname:String, ipassword:String) -> Bool{
            var login = false
        do{
            let db = try Connection(self.dbFile)
            let users = Table("users")
            let username = Expression<String>("username")
            let password = Expression<String>("password")
            let email = Expression<String>("email")
            let id = Expression<Int64>("id")
            let query = users.filter(username == iname && password == ipassword)
            for user in try db.prepare(query) {
                print("id: \(user[id]), username: \(user[username]), email: \(user[email]), password: \(user[password])")
                login = true
            }
        }catch{
            print(error)
        }
        return login
    }

    func showAll(){
        do{
            let db = try Connection(self.dbFile)
            let users = Table("users")
            let id = Expression<Int64>("id")
            let username = Expression<String>("username")
            let password = Expression<String>("password")
            let email = Expression<String>("email")
            for user in try db.prepare(users) {
                print("id: \(user[id]), username: \(user[username]), email: \(user[email]), password: \(user[password])")
                // id: 1, name: Optional("Alice"), email: alice@mac.com
            }
        }catch{
            print(error)
        }
    }
    
    
    func dbstuff(){
        do {
            let db = try Connection(self.dbFile)
            
            let users = Table("users")
            let id = Expression<Int64>("id")
            let name = Expression<String?>("name")
            let email = Expression<String>("email")
            
            try db.run(users.create { t in
                t.column(id, primaryKey: true)
                t.column(name)
                t.column(email, unique: true)
            })
            // CREATE TABLE "users" (
            //     "id" INTEGER PRIMARY KEY NOT NULL,
            //     "name" TEXT,
            //     "email" TEXT NOT NULL UNIQUE
            // )
            
            let insert = users.insert(name <- "Alice", email <- "alice@mac.com")
            let rowid = try db.run(insert)
            // INSERT INTO "users" ("name", "email") VALUES ('Alice', 'alice@mac.com')
            
            for user in try db.prepare(users) {
                print("id: \(user[id]), name: \(user[name]), email: \(user[email])")
                // id: 1, name: Optional("Alice"), email: alice@mac.com
            }
            
            // SELECT * FROM "users"
            
            let alice = users.filter(id == rowid)
            
            try db.run(alice.update(email <- email.replace("mac.com", with: "me.com")))
            // UPDATE "users" SET "email" = replace("email", 'mac.com', 'me.com')
            // WHERE ("id" = 1)
            
            try db.run(alice.delete())
            // DELETE FROM "users" WHERE ("id" = 1)
            
            try db.scalar(users.count) // 0
            // SELECT count(*) FROM "users"
        } catch {
            print (error)
        }
    return
    }
}
