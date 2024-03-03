//
//  ContentView.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMessage = false
    @State private var isRotated = false
    @State private var isEnvelopeOpen = false
    @State private var isEnvelopeClosed = false
    @State private var isEnvelopeMoving = false
    @State private var isGiftCardVisibe = false
    @State private var isEnvelopeHidden = false
    @State private var isHandComing = false
    @State private var isHandPicking = false
    @State private var isSent = false
    
    var blue = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
    
    var body: some View {
        
        ZStack {
            CreateGift(
                showMessage: $showMessage,
                isRotated: $isRotated,
                isEnvelopeOpen: $isEnvelopeOpen,
                isEnvelopeClosed: $isEnvelopeClosed,
                isEnvelopeMoving: $isEnvelopeMoving,
                isEnvelopeHidden: $isEnvelopeHidden, play: {
                    play()
                })
            .padding()
            
           PostCard(
            isGiftCardVisibe: $isGiftCardVisibe,
            isHandComing: $isHandComing)
            .offset(x: isHandPicking ? 3000: 0)
            .opacity(isHandPicking ? 0 : 1)
            
            SentConfirm(
                isHandPicking: $isHandPicking,
                isSent: $isSent
            )
            .scaleEffect(isSent ? 1.2: 0.3)
            .opacity(isSent ? 1 : 0)
            
           
               
            MyLottieAnimation(url: Bundle.main.url(
                forResource: "confetti",
                withExtension: "lottie")!,loopMode: .repeat(2)
            )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .scaleEffect(isSent ? 2.0 : 0.3)
            .opacity(isSent ? 1 : 0)
            
            
            
            
                
            
            
        }
        
        
    }
    
    func play() {
        withAnimation(.easeInOut(duration: 0.5)) {
            showMessage.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isRotated.toggle()
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation(.easeInOut(duration: 2)) {
                            isEnvelopeOpen.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    isEnvelopeClosed.toggle()
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                        withAnimation(.easeInOut(duration: 0.5)) {
                                            isEnvelopeMoving.toggle()
                                            
                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                withAnimation(.easeInOut(duration: 0.5)) {
                                                    isEnvelopeHidden.toggle()
                                                    
                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                        withAnimation(.spring()) {
                                                            isGiftCardVisibe.toggle()
                                                            
                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                                withAnimation(.easeInOut(duration: 0.5)) {
                                                                    isHandComing.toggle()
                                                                    
                                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                                        withAnimation(.easeInOut(duration: 1)) {
                                                                            isHandPicking.toggle()
                                                                            
                                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
                                                                                withAnimation(.easeInOut(duration: 0.5)) {
                                                                                    isSent.toggle()
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            
                                                                        }
                                                                    }
                                                                    
                                                                }
                                                            }
                                                            
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        
                                        
                                    }
                                }
                            }
                        }
                        
                        
                        
                    }
                }
            }
        }
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
