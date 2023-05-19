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
    @State var trueusername: String = "Admin"
    @State var truepassword: String = "Adminpw"
    @State var showMenu: Bool = false
    var body: some View {
        NavigationStack{
            NavigationLink (destination: ContentView(), isActive: $showMenu) {
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
                TextField("password", text:$password, prompt: Text("Password"))
                    .padding(.all, 8)
                    .background(Color(.systemGray6))
                    .disableAutocorrection(true)
                    .cornerRadius(5)
                    .frame(maxWidth: 300)
                
                
                Button {
                    if username == trueusername && password == truepassword{
                        showMenu = true
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
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
