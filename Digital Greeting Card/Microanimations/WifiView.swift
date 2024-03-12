//
//  WifiView.swift
//  Digital Greeting Card
//
//  Created by Kailash on 10/03/24.
//

import SwiftUI

struct WifiView: View {
    
    @State var variableValue: Double = 0.0
    @State var isAnimating: Bool = false
    @State var isPlane: Bool = false
    @Namespace var namespace
    
    var body: some View {
        VStack {
//            Spacer()
//            if !isPlane {
//                Image(systemName: "cellularbars")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 50, height: 50)
//                    .matchedGeometryEffect(id: "plane", in: namespace)
//            } else {
//                Image(systemName: "airplane")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 50, height: 50)
//                    .matchedGeometryEffect(id: "plane", in: namespace)
//            }
//            Spacer()
//            Button {
//                withAnimation {
//                    isPlane.toggle()
//                }
//               
//            } label: {
//                Text("Animate to paperplane")
//            }
            

            Spacer()
            Image(systemName: "wifi", variableValue: variableValue)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .onAppear {
                   
                }
            Spacer()
            Button {
                animateWifi()
            } label: {
                Text("Animate")
            }

        }
            
    }
    
    private func animateWifi() {
        animate(to: 0.3) {
            animate(to: 0.5) {
                animate(to: 1.0) {
                    animate(to: 0.3) {
                        animate(to: 0.5) {
                            animate(to: 1.0) {
                                if isAnimating {
                                    animateWifi()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func animate(to value: Double, completion: @escaping () -> Void) {
        withAnimation(Animation.linear(duration: 0.5)) {
            self.variableValue = value
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion()
        }
    }
}


#Preview {
    WifiView()
}
