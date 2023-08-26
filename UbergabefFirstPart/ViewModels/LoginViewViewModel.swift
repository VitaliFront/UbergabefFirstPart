//
//  LoginViewViewModel.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMesage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
       // Try to log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMesage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMesage = "Bitte füllen Sie alle Felder aus"
            return false
        }
        
       
        guard email.contains("@") && email.contains(".") else {
            errorMesage = "Bitte geben Sie eine gültige E-Mail-Adresse ein"
            return false
        }
        return true
    }
}
