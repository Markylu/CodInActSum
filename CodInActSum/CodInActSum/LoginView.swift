//
//  LoginView.swift
//  CodInActSum
//
//  Created by Markus Lu on 19/5/2023.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var showMenu: Bool = false
    @State var createUser: Bool = false
    @State var wronglogin: Float = 0
    let mydb = MyDB()
    var body: some View {
        NavigationStack{
            NavigationLink (destination: ContentView(), isActive: $showMenu) {
                EmptyView()
            }
            NavigationLink (destination: NewUserView(), isActive: $createUser) {
                EmptyView()
            }
            VStack{
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding([.top, .bottom, .trailing], 2.0)
                TextField("Username", text:$username, prompt: Text("Username"))
                    .padding(.all, 8)
                    .background(Color(.systemGray6))
                    .disableAutocorrection(true)
                    .cornerRadius(5)
                    .frame(maxWidth: 300)
                    .border(.red, width: CGFloat(wronglogin))
                TextField("password", text:$password, prompt: Text("Password"))
                    .padding(.all, 8)
                    .background(Color(.systemGray6))
                    .disableAutocorrection(true)
                    .cornerRadius(5)
                    .frame(maxWidth: 300)
                    .border(.red, width: CGFloat(wronglogin))
                
                Button {
                    showMenu = mydb.loginCheck(iname: username, ipassword: password)
                    if showMenu == false{
                        wronglogin = 2
                    }else{
                        wronglogin = 0
                    }
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
                    createUser = true
                } label: {
                    Text("Create Account")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.all, 5)
                        .padding([.leading, .trailing], 20)
                        .background(Color.pink)
                        .cornerRadius(20)
                }

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
