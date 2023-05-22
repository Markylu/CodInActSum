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
        } catch {
            print(error)
        }
        return
    }
    
    func newUser(){
        do {
            
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
