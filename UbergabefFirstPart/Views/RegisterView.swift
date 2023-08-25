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
        
        Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
