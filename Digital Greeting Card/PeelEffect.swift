//
//  PeelEffect.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct PeelEffect<Content: View>: View {
    var content: Content
    var date: Int
    
    @State private var dragProgress: CGFloat = 0
    
    init(date: Int, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.date = date
        
    }
    
   
    
    var body: some View {
        content
            .mask({
                GeometryReader { proxy in
                    let rect = proxy.frame(in: .global)
                    
                    Rectangle()
                        .padding(.trailing, dragProgress * rect.width)
                }
            })
            .overlay {
                GeometryReader { proxy in
//                    let rect = proxy.frame(in: .global)
                    let size = proxy.size
                    
                    content
                        .offset(x: -(size.width - (size.width * dragProgress)))
                        .contentShape(Rectangle())
                        .scaleEffect(x: -1)
                        .mask({
                            Rectangle()
                                .offset(x: size.width * -dragProgress)
                        })
                        .gesture(
                            DragGesture()
                                .onChanged({ value in
                                    var translationY = value.translation.width
                                    translationY = max(-translationY, 0)
                                    
                                    let progress = min(1, translationY / size.width)
                                    dragProgress = progress
                                })
                                .onEnded({ value in
                                    
                                })
                        )
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation(.easeIn) {
                        dragProgress = 1 // Progress to fully peeled state
                    }
                }
            }
            .background {
                CalendarView("March", (date + 1).description)
            }
    }
}

struct PeelEffect_Previews: PreviewProvider {
    static var previews: some View {
        CalendarDragDate()
    }
}
