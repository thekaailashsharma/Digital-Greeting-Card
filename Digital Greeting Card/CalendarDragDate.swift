//
//  CalendarDragDate.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct CalendarDragDate: View {
    var body: some View {
        VStack {
            ForEach(1...4, id: \.self) { value in
                PeelEffect(date: value) {
                    CalendarView("March", value.description)
                }
            }
        }
    }
    
   
 }

@ViewBuilder
func CalendarView(_ month: String, _ date: String) -> some View {
    
    var color1 = #colorLiteral(red: 0.6634693146, green: 0.5929072499, blue: 0.9978089929, alpha: 1)
    var color2 = #colorLiteral(red: 0.768627451, green: 0.5019607843, blue: 0.9803921569, alpha: 1)
    var color3 = #colorLiteral(red: 0.9490196078, green: 0.5137254902, blue: 0.9725490196, alpha: 1)
    
    RoundedRectangle(cornerRadius: 30)
        .stroke(.black)
        .frame(width: 250, height: 250)
        .clipShape(RoundedRectangle(cornerRadius: 30))
            .overlay(
                GeometryReader { geometry in
                    AngularGradient(
                        colors: [
                            Color(uiColor: color1),
                            Color(uiColor: color2),
                            Color(uiColor: color3),
                        ],
                        center: .topTrailing,
                        angle: .degrees(180 + 45)
                    )
                    .frame(width: geometry.size.width, height: geometry.size.height / 3)
                    .mask(
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                            .frame(width: geometry.size.width, height: geometry.size.height / 3)
                            .cornerRadius(30, corners: [.topLeft, .topRight])
    
                    )
                }
            )
        .overlay {
            VStack {
                Text(month)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Spacer()
                
                Text(date)
                    .font(.system(size: 70, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundStyle(.white.gradient)
                
                Spacer()
                
                    
            }.padding()
        }
}

struct CalendarDragDate_Previews: PreviewProvider {
    static var previews: some View {
        CalendarDragDate()
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
