//
//  UbergabefFirstPartApp.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//

import FirebaseCore
import SwiftUI

@main
struct UbergabefFirstPartApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
