//
//  SentConfirm.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct SentConfirm: View {
    
    @Binding var isHandPicking : Bool
    @Binding var isSent : Bool
    var blue = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    
    var body: some View {
        VStack {
            Image(systemName: "checkmark.circle")
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(Color(uiColor: blue).gradient)
                .frame(width: 100, height: 100)
                .padding(.bottom)
            
            Text("Sent Successfully")
                .font(.headline)
                .foregroundColor(.blue)
                .bold()
        }
    }
}


