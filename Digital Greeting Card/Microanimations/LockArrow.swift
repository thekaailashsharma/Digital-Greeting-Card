//
//  LockArrow.swift
//  Digital Greeting Card
//
//  Created by Kailash on 11/03/24.
//

import SwiftUI

struct LockArrow: View {
    var body: some View {
        VStack {
            
            GeometryReader { proxy in
                VStack {
                    let spacer : CGFloat = 50
                    let width: CGFloat = proxy.size.width / 4
                    Text("\(proxy.size.width / 4)")
                    Spacer()
                    
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: proxy.size.width / 5, height: proxy.size.width / 5)
                        .padding()
                        .background(.red.gradient)
                        .overlay {
                            Group {
                                IncompleteCircle()
                                    .stroke(Color.blue, lineWidth: 1) // Adjust stroke color and width as needed
                                
                                ArrowShape()
                                    .fill(Color.green) // Adjust arrow color as needed
                                    .rotationEffect(.degrees(-30))
                                    .offset(x: 44, y: -20)
                                    .frame(width: 15, height: 15)
                                   
                            }
                            .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
//                            CurvedLine(from: CGPoint(
//                                x: width - spacer,
//                                y: width - spacer
//                            ),to: CGPoint(
//                                x: width - spacer,
//                                y: width / 2
//                            ), control: CGPoint(x: 109, y: -100))
//                            .stroke(Color.blue, lineWidth: 4)
//                            .rotationEffect(.degrees(10))
//                            .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                        }
                    
                    
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            
            
            
        }
    }
}

struct IncompleteCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Add arc representing incomplete circle (330 degrees)
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 330), clockwise: false)
        
        return path
    }
}

struct ArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Draw arrow
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.closeSubpath()
        
        return path
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}

struct CurvedLine: Shape {
    let from: CGPoint
    let to: CGPoint
    var control: CGPoint
    
    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get {
            AnimatablePair(control.x, control.y)
        }
        set {
            control = CGPoint(x: newValue.first, y: newValue.second)
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: from)
//        path.addQuadCurve(to: to, control: control)
//        
        let angle = atan2(to.y - control.y, to.x - control.x)
        let arrowLength: CGFloat = 15
        let arrowPoint1 = CGPoint(x: to.x - arrowLength * cos(angle - .pi / 6), y: to.y - arrowLength * sin(angle - .pi / 6))
        let arrowPoint2 = CGPoint(x: to.x - arrowLength * cos(angle + .pi / 6), y: to.y - arrowLength * sin(angle + .pi / 6))
        
        path.move(to: to)
        path.addLine(to: arrowPoint1)
        path.move(to: to)
        path.addLine(to: arrowPoint2)
        
        return path
    }
}

#Preview {
    LockArrow()
}
