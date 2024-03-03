//
//  PostCard.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct PostCard: View {
    
    @Binding var isGiftCardVisibe : Bool
    @Binding var isHandComing : Bool

    var blue = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    
    var body: some View {
        Image("gifrcard")
            .resizable()
            .font(Font.system(size: 120, weight: .ultraLight))
            .frame(width: 300, height: 250)
            .scaleEffect(isGiftCardVisibe ? 1.2: 0.3)
            .opacity(isGiftCardVisibe ? 1 : 0)
            .animation(.interactiveSpring(dampingFraction: 1.5), value: isGiftCardVisibe)
        VStack {
            Spacer()
            HStack {
                Spacer()
                Image("hand")
                    .renderingMode(.template)
                    .resizable()
                    .font(Font.system(size: 120, weight: .ultraLight))
                    .frame(width: 300, height: 250)
                    .offset(x: isHandComing ? 80 : 300, y: -100)
                    .foregroundStyle(Color(uiColor: blue).gradient)
                    .animation(.easeInOut(duration: 1), value: isHandComing)
                
            }
            Spacer()
        }
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

