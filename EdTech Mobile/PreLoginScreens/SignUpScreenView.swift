//
//  SignUpScreenView.swift
//  EdTech Mobile
//
//  Created by Vishavesh on 11/09/23.
//

import SwiftUI

struct SignUpScreenView: View {
    @State var name : String = ""
    @State var email : String = ""
    @State var password: String = ""
    @State var backToLogin: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    backToLogin = true
                    // TODO: backButton
                } label: {
                    Image("backButton")
                        .resizable()
                        .frame(width: 48,height: 48)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            Image("signupScreenImage")
                .resizable()
                .scaledToFit()
                .padding()
            
            Text("Sign up")
                .font(.system(.largeTitle,weight: .semibold))
            
            Text("Create your account")
                .foregroundColor(.gray)
                .font(.system(.body,design: .default,weight: .regular))
            
            Spacer()
            
            TextField("Name", text: $name)
                .padding()
                .border(.gray)
                .cornerRadius(4)
                .padding(.horizontal)
            
            TextField("Email", text: $email)
                .padding()
                .border(.gray)
                .cornerRadius(4)
                .padding()
            
            SecureField("Password",text: $password)
                .padding()
                .border(.gray)
                .cornerRadius(4)
                .padding(.horizontal)
            
            Spacer()
            
            VStack {
                MainButton(title: "Sign up")
                Button {
                    backToLogin = true
                } label: {
                    Text("Log in")
                        .font(.system(.subheadline,weight: .semibold))
                        .foregroundColor(.gray)
                }
            }
        }
        .navigate(to: LoginScreenView(), when: $backToLogin)
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}
