//
//  HeaderView.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
               
            VStack {
                Text("Ubergabe")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text("Macht es Leichter")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
            
        }
        
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        
        .offset(y: -100)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
