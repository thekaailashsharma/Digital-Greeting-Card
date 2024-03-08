//
//  CreateGift.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct CreateGift: View {
    
    @Binding var showMessage : Bool
    @Binding var isRotated : Bool
    @Binding var isEnvelopeOpen : Bool
    @Binding var isEnvelopeClosed : Bool
    @Binding var isEnvelopeMoving : Bool
    @Binding var isEnvelopeHidden : Bool
    
    var play: () -> Void
    
    var body: some View {
        VStack {
            Spacer()
            
            if !isEnvelopeHidden {
                Image("gree")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width - 50, height: 500)
                    .scaleEffect(showMessage ? 0.5 : 1)
                    .rotationEffect(.degrees(isRotated ? 90: 0))
                    .offset(y: isEnvelopeOpen ? 400 : 0)
                    .opacity(isEnvelopeClosed ? 0: 1)
                    .animation(.easeInOut(duration: 0.5), value: isEnvelopeClosed)
                
                if isEnvelopeOpen {
                    Image(systemName: isEnvelopeClosed ? "envelope.fill": "envelope.open.fill")
                        .renderingMode(.template)
                        .resizable()
                        .font(Font.system(size: 120, weight: .ultraLight))
                        .foregroundStyle(Color.gray.gradient)
                        .frame(width: 300, height: 250)
                        .opacity(isEnvelopeOpen ? 1 : 0)
                        .offset(y: isEnvelopeMoving ? -300: 0)
                        .scaleEffect(isEnvelopeMoving ? 0.65 : 1)
                        .scaleEffect(isEnvelopeHidden ? 0: 1)
                        .opacity(isEnvelopeHidden ? 0: 1)
                }
            }
            
            Spacer()
            Button("Open envelope") {
                play()
            }
        }
    }
}

struct CreateGift_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

