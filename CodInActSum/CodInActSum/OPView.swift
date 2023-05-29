//
//  OPView.swift
//  CodInActSum
//
//
//  Created by Markus Lu on 23/5/2023.

import SwiftUI

struct OPView: View {
    let mydb = MyDB()
    @State var theloginPage: Bool = false
    @State var thenewuserPage: Bool = false
    var body: some View {
        NavigationStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            NavigationLink (destination: LoginView(), isActive: $theloginPage) {EmptyView()}
            NavigationLink (destination: NewUserView(), isActive: $thenewuserPage) {EmptyView()}
            Button {
                theloginPage = true
            } label: {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.pink)
                    .cornerRadius(20)
            }
            Button {
                thenewuserPage = true
            } label: {
                Text("new user")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.pink)
                    .cornerRadius(20)
            }
            
            Button {
                mydb.deleteAllUsers()
            } label: {
                Text("Nuke ALL")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.pink)
                    .cornerRadius(20)
            }            
        }
    }
}

struct OPView_Previews: PreviewProvider {
    static var previews: some View {
        OPView()
    }
}
