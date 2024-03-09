//
//  PhaseAnimator.swift
//  Digital Greeting Card
//
//  Created by Kailash on 09/03/24.
//

import SwiftUI

struct PhaseAnimator: View {
    
    @State var isStarted: Bool = false
    @State var isOVisible: Bool = false
    @State var isDoGoing: Bool = false
    @State var rectWidth: CGFloat = UIScreen.main.bounds.width / 1.5
    
    @State var isWStarted: Bool = false
    @State var isHVisible: Bool = false
    @State var isWGoing: Bool = false
    
    @State var isYStarted: Bool = false
    @State var isYGoing: Bool = false
    @State var oScale: Bool = false
    
    @State var isYGoingF: Bool = false
    @State var isLStarted: Bool = false
    @State var isLsStarted: Bool = false
    @State var isHeartStarted: Bool = false
    
    @State var color: Color = .white

    var darkBlue = #colorLiteral(red: 0.06274509804, green: 0.02745098039, blue: 0.1450980392, alpha: 1)
    
    @State var colors : [Color] = [.pink, .red, .cyan, .blue, .black]

    
    @Namespace var namespace
    @Namespace var namespace2
    
    init() {
        for family in UIFont.familyNames {
                 print(family)
                 for names in UIFont.fontNames(forFamilyName: family){
                 print("== \(names)")
                 }
            }
    }
    
    func changeColor(i: Int) {
        withAnimation {
            color = colors[i % 5]
        }
    }
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                HStack {
                    Text("D")
                        .font(.custom("MitchaellaFreeModernUnique-Regu", size: 80))
                        .fontWeight(.bold)
                        .foregroundStyle(!isWStarted ? .yellow : .black)
                        .offset(
                            x: !isStarted ? -UIScreen.main.bounds.width : 0)
                    VStack(spacing: 0) {
                        Text("O")
                            .font(.custom("MitchaellaFreeModernUnique-Regu", size: 80))
                            .fontWeight(.semibold)
                            .foregroundStyle(isOVisible ? .white : .black)
                            .font(.system(size: 80))
                            .offset(
                                y: !isOVisible ? UIScreen.main.bounds.height : 0)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .trim(from: 0.0, to: 50.0)
                            .frame(
                                width: rectWidth,
                                height: 6
                            )
                            .offset(
                                x: !isStarted ? -UIScreen.main.bounds.width : 0)
                        
                    }
                    
                    
                }
                
                .scaleEffect(isDoGoing ? 3 : 1)
                .opacity(isDoGoing ? 0: 1)
                .offset(y: 200)
                
                
                HStack {
                    Text("W")
                        .font(.custom("RoashePersonalUse", size: 80))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .offset(
                            x: !isWStarted ? -UIScreen.main.bounds.height : 0)
                    
                    Text("H")
                        .font(.custom("RoashePersonalUse", size: 80))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .offset(
                            x: !isHVisible ? -UIScreen.main.bounds.width : 0)
                    
                    Text("A")
                        .font(.custom("RoashePersonalUse", size: 80))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .offset(
                            x: !isHVisible ? UIScreen.main.bounds.width : 0)
                    
                    Text("T")
                        .font(.custom("RoashePersonalUse", size: 80))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .offset(
                            x: !isHVisible ? -UIScreen.main.bounds.width : 0)
                }
                .scaleEffect(isWGoing ? 3 : 1, anchor: .topLeading)
                .opacity(isWGoing ? 0: 1)
                .offset(y: -30)
                .offset(y: 130)
                
                
                if !isYGoing {
                    HStack {
                        Text("Y")
                            .font(.custom("LonglineQuartFREE", size: 80))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .font(.system(size: 80))
                            .offset(
                                x: !isYStarted ? -UIScreen.main.bounds.height : 0)
                        
                        Text("O")
                            .font(.custom("LonglineQuartFREE", size: 80))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .offset(
                                x: !isYStarted ? -UIScreen.main.bounds.width : 0)
                        
                        Text("U")
                            .font(.custom("LonglineQuartFREE", size: 80))
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .offset(
                                x: !isYStarted ? UIScreen.main.bounds.width : 0)
                        
                        
                    }
                    .offset(y: 50)
                    .scaleEffect(isYGoing ? 3 : 1)
                    .opacity(isYGoing ? 0: 1)
                    .matchedGeometryEffect(id: "you", in: namespace)
                } else {
                    VStack {
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)], spacing: 20) {
                            ForEach(0..<2) { _ in
                                YouView(oScale: $oScale)
                                
                            }
                        }
                        
                        .offset(y: -100)
                        Spacer()
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 20)], spacing: 20) {
                            ForEach(0..<2) { _ in
                                YouView(oScale: $oScale)
                            }
                        }
                        .offset(y: -100)
                    }
                    .offset(y: 100)
                    .scaleEffect(!isYGoing ? 3 : 1)
                    .opacity(!isYGoing ? 0: 1)
                    .matchedGeometryEffect(id: "you", in: namespace)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .scaleEffect(isYGoingF ? -0.5 : 1)
                    .opacity(isYGoingF ? 0: 1)
                    
                }
                
                if #available(iOS 17.0, *) {
                    LoveShape()
                        .phaseAnimator(isLStarted ? [false, true] : [false, false]) { love, draw in
                            LoveShape()
                                .trim(from: 0.0, to: draw ? 1.0: 0.0)
                                .stroke(
                                    style: StrokeStyle(
                                        lineWidth: 4,
                                        lineCap: .round,
                                        lineJoin: .round)
                                    
                                ).fill(
                                    LinearGradient(
                                        colors: [.red, .blue, .green],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)
                                )
                                .padding(10)
                        } animation: { _ in
                                .easeIn(duration: 5)
                        }
                        .frame(width: 250, height: 200)
                        .offset(y: -250)
                        .opacity(isLStarted ? 1 : 0)
                        

                }
                
                
                Spacer()
                
                Button(action: {
                    withAnimation(
                        .interactiveSpring(
                            response: 1,
                            dampingFraction: 0.5,
                            blendDuration: 5
                        )
                    ) {
                        isStarted.toggle()
                        withAnimation(.linear(duration: 2)) {
                            rectWidth = 35
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation(
                                .interpolatingSpring(
                                    duration: 1.5,
                                    bounce: 0.35,
                                    initialVelocity: 0.25
                                )
                            ) {
                                color = Color(uiColor: darkBlue)
                                isOVisible.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        isDoGoing.toggle()
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                            withAnimation(
                                                .interactiveSpring(
                                                    response: 1,
                                                    dampingFraction: 0.5,
                                                    blendDuration: 5
                                                )
                                            ) {
                                                color = .purple
                                                isWStarted.toggle()
                                                
                                                
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                                                    withAnimation(
                                                        .interactiveSpring(
                                                            response: 1,
                                                            dampingFraction: 0.5,
                                                            blendDuration: 5
                                                        )
                                                    ) {
                                                        color = Color(uiColor: darkBlue)
                                                        isHVisible.toggle()
                                                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                                            withAnimation(.easeInOut(duration: 0.5)) {
                                                                color = .pink.opacity(0.6)
                                                                isWGoing.toggle()
                                                                
                                                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                                                    withAnimation(
                                                                        .interpolatingSpring(
                                                                            duration: 1.5,
                                                                            bounce: 0.35,
                                                                            initialVelocity: 0.25
                                                                        )
                                                                    ) {
                                                                        color = .black
                                                                        isYStarted.toggle()
                                                                        
                                                                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                                                            withAnimation(
                                                                                .interpolatingSpring(
                                                                                    duration: 1.5,
                                                                                    bounce: 0.35,
                                                                                    initialVelocity: 0.25
                                                                                )
                                                                            ) {
                                                                                color = .cyan.opacity(0.5)
                                                                                isYGoing.toggle()
                                                                                
                                                                                withAnimation(
                                                                                    .interpolatingSpring(
                                                                                        duration: 1.5,
                                                                                        bounce: 0.35,
                                                                                        initialVelocity: 0.25
                                                                                    )
                                                                                ) {
                                                                                    color = .blue
                                                                                    oScale.toggle()
                                                                                    
                                                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                                                                        withAnimation(
                                                                                            .interpolatingSpring(
                                                                                                duration: 1.5,
                                                                                                bounce: 0.35,
                                                                                                initialVelocity: 0.25
                                                                                            )
                                                                                        ) {
                                                                                            color = .indigo.opacity(0.5)
                                                                                            oScale.toggle()
                                                                                            
                                                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                                                                                withAnimation(
                                                                                                    .interpolatingSpring(
                                                                                                        duration: 1.5,
                                                                                                        bounce: 0.35,
                                                                                                        initialVelocity: 0.25
                                                                                                    )
                                                                                                ) {
                                                                                                    color = Color(uiColor: darkBlue)
                                                                                                    isYGoingF.toggle()
                                                                                                    
                                                                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                                                                                        withAnimation(
                                                                                                            .interpolatingSpring(
                                                                                                                duration: 1.5,
                                                                                                                bounce: 0.35,
                                                                                                                initialVelocity: 0.25
                                                                                                            )
                                                                                                        ) {
                                                                                                      
                                                                                                            isLStarted.toggle()
                                                                                                            
                                                                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                                                                                                                withAnimation(
                                                                                                                    .interpolatingSpring(
                                                                                                                        duration: 2.0,
                                                                                                                        bounce: 0.35,
                                                                                                                        initialVelocity: 0.25
                                                                                                                    )
                                                                                                                ) {
                                                                                                                    isLStarted.toggle()
                                                                                                                    isLsStarted.toggle()
                                                                                                                    isHeartStarted.toggle()
                                                                                                                    
                                                                                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                                                                                                        withAnimation(
                                                                                                                            .interpolatingSpring(
                                                                                                                                duration: 1.5,
                                                                                                                                bounce: 0.35,
                                                                                                                                initialVelocity: 0.25
                                                                                                                            )
                                                                                                                        ) {
                                                                                                                            isHeartStarted.toggle()
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
                                        
                                    }
                                    
                                    
                                }
                            }
                            
                        }
                    }
                }, label: {
                    Text("Play").foregroundStyle(.black)
                })
                
            }
        }
        .toolbar(.hidden)
    }
}

#Preview {
    PhaseAnimator()
}


enum AnimationPhase: CaseIterable {
    case fadingIn, middle, zoomingOut
    
    var scale: Double {
        switch self {
        case .fadingIn: 0
        case .middle: 1
        case .zoomingOut: 3
        }
    }
    
    var opacity: Double {
        switch self {
        case .fadingIn: 0
        case .middle: 1
        case .zoomingOut: 0
        }
    }
}

struct YouView: View {
    
    @Binding var oScale: Bool
    
    var body: some View {
        HStack {
            Text("Y")
                .font(.custom("LonglineQuartFREE", size: 30))
                .fontWeight(.semibold)
              
            
            
            Text("O")
                .font(.custom("LonglineQuartFREE", size: 30))
                .fontWeight(.semibold)
                .scaleEffect(oScale ? 1.5: 1)
               
            
            
            Text("U")
                .font(.custom("LonglineQuartFREE", size: 30))
                .fontWeight(.semibold)
                
            
            
            
        }
    }
}


