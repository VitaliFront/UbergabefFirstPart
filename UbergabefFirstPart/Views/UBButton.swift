//
//  UBButton.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 26.08.2023.
//

import SwiftUI

struct UBButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
       
    }
}

struct UBButton_Previews: PreviewProvider {
    static var previews: some View {
        UBButton(title: "Value",
                 background: .pink) {
            // Action
        }
    }
}
