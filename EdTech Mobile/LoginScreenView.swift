//
//  LoginScreenView.swift
//  EdTech Mobile
//
//  Created by Vishavesh on 10/09/23.
//

import SwiftUI

struct LoginScreenView: View {
    @State var email : String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("loginScreenImage")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Log in")
                .font(.system(.largeTitle,weight: .semibold))
            
            Text("Login with social networks")
                .foregroundColor(.gray)
                .font(.system(.body,design: .default,weight: .regular))
            
            Spacer()
            
            TextField("Email", text: $email)
                .padding()
                .border(.gray)
                .cornerRadius(4)
                .padding()
            
            SecureField("Password",text: $password)
                .padding()
                .border(.gray)
                .cornerRadius(4)
                .padding()
            
            Spacer()
            
            Button {
                // TODO: Signup screen change
            } label: {
                 Text("Forgot Password?")
                    .font(.system(.subheadline,weight: .semibold))
                    .foregroundColor(.gray)
            }
            .padding()

            
            MainButton(title: "Login")
            Button {
                // TODO: Signup screen change
            } label: {
                 Text("Sign up")
                    .font(.system(.subheadline,weight: .semibold))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
