//
//  NewUserView.swift
//  CodInActSum
//
//  Created by Markus Lu on 22/5/2023.
//

import SwiftUI

struct NewUserView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    @State var trueusername: String = "Admin"
    @State var truepassword: String = "Adminpw"
    @State var loginPage: Bool = false
    let mydb = MyDB()
    var body: some View {
        NavigationStack{
            NavigationLink (destination: LoginView(), isActive: $loginPage) {
                EmptyView()
            }
            ZStack{
                Rectangle()
                    .fill(.red)
                    .frame(width: 1000,height: 1000)
                VStack{
                    Spacer(minLength: 200)
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .overlay {Circle().stroke(.white, lineWidth: 1)}.shadow(radius: 7)
                    Spacer(minLength: 30)
                    TextField("Username", text:$username, prompt: Text("Username"))
                        .padding(.all, 8)
                        .background(Color(.systemGray6))
                        .disableAutocorrection(true)
                        .cornerRadius(5)
                        .frame(maxWidth: 300)
                    TextField("Email", text:$email, prompt: Text("Email"))
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
                        mydb.newUser(iname: String(username), iemail: String(email), ipassword: String(password))
                        loginPage = true
                    } label: {
                        Text("Create!")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .padding(.all, 10)
                            .padding([.leading, .trailing], 30)
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                    Spacer(minLength: 300)
                }
            }
        }
    }
}

struct NewUserView_Previews: PreviewProvider {
    static var previews: some View {
        NewUserView()
    }
}
