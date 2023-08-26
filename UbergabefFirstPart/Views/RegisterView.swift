//
//  RegisterView.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//

import SwiftUI

struct RegisterView: View {
    
    
    var body: some View {  VStack{
        // Header
        HeaderView(title: "Register", subtitle: "Start organizing tods", angle: -15, background: .orange)
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            UBButton(
                title: "Register",
                background: .green) {
                    //Attempt registration
                }.padding()
        }
        .offset(y: -50)
        
        Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
