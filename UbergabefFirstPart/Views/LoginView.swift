//
//  LoginView.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            // Header
            HeaderView()
            // Login Form
            
            Form {
                TextField("Email ", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Kennwort", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button {
                    // Attempt log in
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.blue)
                        Text("Log In")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
                
            }
            
            
            //MARK: Create Account
            VStack {
                Text("Kein Konto ?")
                Button("Ein Konto erstellen") {
                    // Show registration
                }
            }
            .ignoresSafeArea()
            .padding(.bottom, 50)
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
