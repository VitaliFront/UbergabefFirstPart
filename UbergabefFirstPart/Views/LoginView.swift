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
        NavigationView {
            VStack{
                // Header
                HeaderView(title: "Ubergabe", subtitle: "Macht es leicht", angle: 15, background: .pink)
                
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
                    .padding()
                    
                }
                
                
                //MARK: Create Account
                VStack {
                    Text("Kein Konto ?")
                    
                    NavigationLink("Konto erstellen", destination: RegisterView())
                }
                
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
