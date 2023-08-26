//
//  LoginView.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView(title: "Ubergabe", subtitle: "Macht es leicht", angle: 15, background: .pink)
                
                // Login Form
                
                Form {
                    TextField("Email ", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .textInputAutocapitalization(.none)
                    SecureField("Kennwort", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                    UBButton(
                        title: "Log In",
                        background: .blue) {
                            //Attempt Log In
                        }
                        .padding()

                    
                }
                .offset(y: -50)
                
                
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
