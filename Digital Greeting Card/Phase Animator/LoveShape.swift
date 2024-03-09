//
//  LoveShape.swift
//  Digital Greeting Card
//
//  Created by Kailash on 09/03/24.
//

import SwiftUI

struct LoveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.03153*width, y: 0.878*height))
        path.addCurve(to: CGPoint(x: 0.02926*width, y: 0.81383*height), control1: CGPoint(x: 0.03002*width, y: 0.86244*height), control2: CGPoint(x: 0.02926*width, y: 0.84106*height))
        path.addCurve(to: CGPoint(x: 0.03881*width, y: 0.591*height), control1: CGPoint(x: 0.02926*width, y: 0.78583*height), control2: CGPoint(x: 0.03244*width, y: 0.71156*height))
        path.addCurve(to: CGPoint(x: 0.05562*width, y: 0.12667*height), control1: CGPoint(x: 0.05002*width, y: 0.39111*height), control2: CGPoint(x: 0.05562*width, y: 0.23633*height))
        path.addCurve(to: CGPoint(x: 0.05381*width, y: 0.031*height), control1: CGPoint(x: 0.05562*width, y: 0.10333*height), control2: CGPoint(x: 0.05502*width, y: 0.07144*height))
        path.addCurve(to: CGPoint(x: 0.10426*width, y: 0.059*height), control1: CGPoint(x: 0.07684*width, y: 0.03411*height), control2: CGPoint(x: 0.09365*width, y: 0.04344*height))
        path.addCurve(to: CGPoint(x: 0.11471*width, y: 0.08817*height), control1: CGPoint(x: 0.10881*width, y: 0.06522*height), control2: CGPoint(x: 0.11229*width, y: 0.07494*height))
        path.addCurve(to: CGPoint(x: 0.11881*width, y: 0.12317*height), control1: CGPoint(x: 0.11714*width, y: 0.10061*height), control2: CGPoint(x: 0.1185*width, y: 0.11228*height))
        path.addCurve(to: CGPoint(x: 0.11971*width, y: 0.18267*height), control1: CGPoint(x: 0.11941*width, y: 0.13406*height), control2: CGPoint(x: 0.11971*width, y: 0.15389*height))
        path.addCurve(to: CGPoint(x: 0.10562*width, y: 0.46617*height), control1: CGPoint(x: 0.11971*width, y: 0.21144*height), control2: CGPoint(x: 0.11502*width, y: 0.30594*height))
        path.addCurve(to: CGPoint(x: 0.08971*width, y: 0.843*height), control1: CGPoint(x: 0.09653*width, y: 0.62561*height), control2: CGPoint(x: 0.09123*width, y: 0.75122*height))
        path.addCurve(to: CGPoint(x: 0.24926*width, y: 0.79867*height), control1: CGPoint(x: 0.16153*width, y: 0.843*height), control2: CGPoint(x: 0.21471*width, y: 0.82822*height))
        path.addCurve(to: CGPoint(x: 0.22881*width, y: 0.93283*height), control1: CGPoint(x: 0.24653*width, y: 0.85622*height), control2: CGPoint(x: 0.23971*width, y: 0.90094*height))
        path.addCurve(to: CGPoint(x: 0.1879*width, y: 0.98067*height), control1: CGPoint(x: 0.2179*width, y: 0.96472*height), control2: CGPoint(x: 0.20426*width, y: 0.98067*height))
        path.addCurve(to: CGPoint(x: 0.14699*width, y: 0.97017*height), control1: CGPoint(x: 0.18305*width, y: 0.98067*height), control2: CGPoint(x: 0.16941*width, y: 0.97717*height))
        path.addCurve(to: CGPoint(x: 0.07653*width, y: 0.96083*height), control1: CGPoint(x: 0.12487*width, y: 0.96394*height), control2: CGPoint(x: 0.10138*width, y: 0.96083*height))
        path.addCurve(to: CGPoint(x: 0.00381*width, y: 0.98067*height), control1: CGPoint(x: 0.05168*width, y: 0.96083*height), control2: CGPoint(x: 0.02744*width, y: 0.96744*height))
        path.addCurve(to: CGPoint(x: 0.03153*width, y: 0.878*height), control1: CGPoint(x: 0.00835*width, y: 0.93556*height), control2: CGPoint(x: 0.01759*width, y: 0.90133*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.40375*width, y: 0.38217*height))
        path.addCurve(to: CGPoint(x: 0.35102*width, y: 0.48483*height), control1: CGPoint(x: 0.38405*width, y: 0.38217*height), control2: CGPoint(x: 0.36648*width, y: 0.41639*height))
        path.addCurve(to: CGPoint(x: 0.32784*width, y: 0.68783*height), control1: CGPoint(x: 0.33557*width, y: 0.5525*height), control2: CGPoint(x: 0.32784*width, y: 0.62017*height))
        path.addCurve(to: CGPoint(x: 0.37057*width, y: 0.90017*height), control1: CGPoint(x: 0.32784*width, y: 0.82939*height), control2: CGPoint(x: 0.34208*width, y: 0.90017*height))
        path.addCurve(to: CGPoint(x: 0.42011*width, y: 0.79867*height), control1: CGPoint(x: 0.39087*width, y: 0.90017*height), control2: CGPoint(x: 0.40738*width, y: 0.86633*height))
        path.addCurve(to: CGPoint(x: 0.4392*width, y: 0.56883*height), control1: CGPoint(x: 0.43284*width, y: 0.73022*height), control2: CGPoint(x: 0.4392*width, y: 0.65361*height))
        path.addCurve(to: CGPoint(x: 0.40375*width, y: 0.38217*height), control1: CGPoint(x: 0.4392*width, y: 0.44439*height), control2: CGPoint(x: 0.42738*width, y: 0.38217*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43193*width, y: 0.297*height))
        path.addCurve(to: CGPoint(x: 0.47829*width, y: 0.36583*height), control1: CGPoint(x: 0.45011*width, y: 0.297*height), control2: CGPoint(x: 0.46557*width, y: 0.31994*height))
        path.addCurve(to: CGPoint(x: 0.49738*width, y: 0.55017*height), control1: CGPoint(x: 0.49102*width, y: 0.41172*height), control2: CGPoint(x: 0.49738*width, y: 0.47317*height))
        path.addCurve(to: CGPoint(x: 0.47693*width, y: 0.78817*height), control1: CGPoint(x: 0.49738*width, y: 0.6365*height), control2: CGPoint(x: 0.49057*width, y: 0.71583*height))
        path.addCurve(to: CGPoint(x: 0.41238*width, y: 0.95733*height), control1: CGPoint(x: 0.46178*width, y: 0.86983*height), control2: CGPoint(x: 0.44026*width, y: 0.92622*height))
        path.addCurve(to: CGPoint(x: 0.36057*width, y: 0.98417*height), control1: CGPoint(x: 0.39663*width, y: 0.97522*height), control2: CGPoint(x: 0.37935*width, y: 0.98417*height))
        path.addCurve(to: CGPoint(x: 0.29148*width, y: 0.906*height), control1: CGPoint(x: 0.3342*width, y: 0.98417*height), control2: CGPoint(x: 0.31117*width, y: 0.95811*height))
        path.addCurve(to: CGPoint(x: 0.26238*width, y: 0.67967*height), control1: CGPoint(x: 0.27208*width, y: 0.85311*height), control2: CGPoint(x: 0.26238*width, y: 0.77767*height))
        path.addCurve(to: CGPoint(x: 0.29057*width, y: 0.4195*height), control1: CGPoint(x: 0.26238*width, y: 0.58089*height), control2: CGPoint(x: 0.27178*width, y: 0.49417*height))
        path.addCurve(to: CGPoint(x: 0.36511*width, y: 0.27717*height), control1: CGPoint(x: 0.30935*width, y: 0.34406*height), control2: CGPoint(x: 0.3342*width, y: 0.29661*height))
        path.addCurve(to: CGPoint(x: 0.3742*width, y: 0.28533*height), control1: CGPoint(x: 0.36845*width, y: 0.27717*height), control2: CGPoint(x: 0.37148*width, y: 0.27989*height))
        path.addCurve(to: CGPoint(x: 0.37875*width, y: 0.3005*height), control1: CGPoint(x: 0.37723*width, y: 0.29*height), control2: CGPoint(x: 0.37875*width, y: 0.29506*height))
        path.addCurve(to: CGPoint(x: 0.32375*width, y: 0.528*height), control1: CGPoint(x: 0.34814*width, y: 0.35494*height), control2: CGPoint(x: 0.32981*width, y: 0.43078*height))
        path.addCurve(to: CGPoint(x: 0.34693*width, y: 0.41483*height), control1: CGPoint(x: 0.33011*width, y: 0.48444*height), control2: CGPoint(x: 0.33784*width, y: 0.44672*height))
        path.addCurve(to: CGPoint(x: 0.37602*width, y: 0.3425*height), control1: CGPoint(x: 0.35632*width, y: 0.38294*height), control2: CGPoint(x: 0.36602*width, y: 0.35883*height))
        path.addCurve(to: CGPoint(x: 0.43193*width, y: 0.297*height), control1: CGPoint(x: 0.39511*width, y: 0.31217*height), control2: CGPoint(x: 0.41375*width, y: 0.297*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.64111*width, y: 0.96667*height))
        path.addCurve(to: CGPoint(x: 0.61065*width, y: 0.983*height), control1: CGPoint(x: 0.63141*width, y: 0.97756*height), control2: CGPoint(x: 0.62126*width, y: 0.983*height))
        path.addCurve(to: CGPoint(x: 0.59292*width, y: 0.9655*height), control1: CGPoint(x: 0.60005*width, y: 0.983*height), control2: CGPoint(x: 0.59414*width, y: 0.97717*height))
        path.addCurve(to: CGPoint(x: 0.57611*width, y: 0.74267*height), control1: CGPoint(x: 0.58808*width, y: 0.91572*height), control2: CGPoint(x: 0.58247*width, y: 0.84144*height))
        path.addCurve(to: CGPoint(x: 0.55656*width, y: 0.4825*height), control1: CGPoint(x: 0.56974*width, y: 0.64311*height), control2: CGPoint(x: 0.56323*width, y: 0.55639*height))
        path.addCurve(to: CGPoint(x: 0.53338*width, y: 0.31333*height), control1: CGPoint(x: 0.5502*width, y: 0.40783*height), control2: CGPoint(x: 0.54247*width, y: 0.35144*height))
        path.addCurve(to: CGPoint(x: 0.57338*width, y: 0.283*height), control1: CGPoint(x: 0.55005*width, y: 0.29311*height), control2: CGPoint(x: 0.56338*width, y: 0.283*height))
        path.addCurve(to: CGPoint(x: 0.59611*width, y: 0.3005*height), control1: CGPoint(x: 0.58338*width, y: 0.283*height), control2: CGPoint(x: 0.59095*width, y: 0.28883*height))
        path.addCurve(to: CGPoint(x: 0.60883*width, y: 0.3705*height), control1: CGPoint(x: 0.60126*width, y: 0.31217*height), control2: CGPoint(x: 0.6055*width, y: 0.3355*height))
        path.addCurve(to: CGPoint(x: 0.61656*width, y: 0.45567*height), control1: CGPoint(x: 0.61247*width, y: 0.40472*height), control2: CGPoint(x: 0.61505*width, y: 0.43311*height))
        path.addCurve(to: CGPoint(x: 0.62292*width, y: 0.5805*height), control1: CGPoint(x: 0.6208*width, y: 0.53033*height), control2: CGPoint(x: 0.62292*width, y: 0.57194*height))
        path.addCurve(to: CGPoint(x: 0.62656*width, y: 0.6855*height), control1: CGPoint(x: 0.62292*width, y: 0.58906*height), control2: CGPoint(x: 0.62414*width, y: 0.62406*height))
        path.addCurve(to: CGPoint(x: 0.63202*width, y: 0.80567*height), control1: CGPoint(x: 0.62898*width, y: 0.74617*height), control2: CGPoint(x: 0.6308*width, y: 0.78622*height))
        path.addCurve(to: CGPoint(x: 0.71292*width, y: 0.26783*height), control1: CGPoint(x: 0.68595*width, y: 0.53733*height), control2: CGPoint(x: 0.71292*width, y: 0.35806*height))
        path.addCurve(to: CGPoint(x: 0.7502*width, y: 0.374*height), control1: CGPoint(x: 0.73777*width, y: 0.3005*height), control2: CGPoint(x: 0.7502*width, y: 0.33589*height))
        path.addCurve(to: CGPoint(x: 0.73111*width, y: 0.51283*height), control1: CGPoint(x: 0.7502*width, y: 0.40511*height), control2: CGPoint(x: 0.74383*width, y: 0.45139*height))
        path.addCurve(to: CGPoint(x: 0.68383*width, y: 0.7345*height), control1: CGPoint(x: 0.71868*width, y: 0.5735*height), control2: CGPoint(x: 0.70292*width, y: 0.64739*height))
        path.addCurve(to: CGPoint(x: 0.64111*width, y: 0.96667*height), control1: CGPoint(x: 0.66505*width, y: 0.82083*height), control2: CGPoint(x: 0.6508*width, y: 0.89822*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.88685*width, y: 0.67967*height))
        path.addCurve(to: CGPoint(x: 0.84412*width, y: 0.66683*height), control1: CGPoint(x: 0.8723*width, y: 0.67967*height), control2: CGPoint(x: 0.85806*width, y: 0.67539*height))
        path.addCurve(to: CGPoint(x: 0.84366*width, y: 0.703*height), control1: CGPoint(x: 0.84381*width, y: 0.67461*height), control2: CGPoint(x: 0.84366*width, y: 0.68667*height))
        path.addCurve(to: CGPoint(x: 0.85775*width, y: 0.84883*height), control1: CGPoint(x: 0.84366*width, y: 0.76756*height), control2: CGPoint(x: 0.84836*width, y: 0.81617*height))
        path.addCurve(to: CGPoint(x: 0.89139*width, y: 0.89783*height), control1: CGPoint(x: 0.86715*width, y: 0.8815*height), control2: CGPoint(x: 0.87836*width, y: 0.89783*height))
        path.addCurve(to: CGPoint(x: 0.92866*width, y: 0.8675*height), control1: CGPoint(x: 0.90442*width, y: 0.89783*height), control2: CGPoint(x: 0.91685*width, y: 0.88772*height))
        path.addCurve(to: CGPoint(x: 0.95957*width, y: 0.7835*height), control1: CGPoint(x: 0.94048*width, y: 0.84728*height), control2: CGPoint(x: 0.95078*width, y: 0.81928*height))
        path.addCurve(to: CGPoint(x: 0.97594*width, y: 0.82667*height), control1: CGPoint(x: 0.97048*width, y: 0.78972*height), control2: CGPoint(x: 0.97594*width, y: 0.80411*height))
        path.addCurve(to: CGPoint(x: 0.87275*width, y: 0.98417*height), control1: CGPoint(x: 0.94927*width, y: 0.93167*height), control2: CGPoint(x: 0.91488*width, y: 0.98417*height))
        path.addCurve(to: CGPoint(x: 0.80594*width, y: 0.9095*height), control1: CGPoint(x: 0.8473*width, y: 0.98417*height), control2: CGPoint(x: 0.82503*width, y: 0.95928*height))
        path.addCurve(to: CGPoint(x: 0.7773*width, y: 0.6995*height), control1: CGPoint(x: 0.78685*width, y: 0.85894*height), control2: CGPoint(x: 0.7773*width, y: 0.78894*height))
        path.addCurve(to: CGPoint(x: 0.7923*width, y: 0.50933*height), control1: CGPoint(x: 0.7773*width, y: 0.63261*height), control2: CGPoint(x: 0.7823*width, y: 0.56922*height))
        path.addCurve(to: CGPoint(x: 0.84003*width, y: 0.3565*height), control1: CGPoint(x: 0.8023*width, y: 0.44867*height), control2: CGPoint(x: 0.81821*width, y: 0.39772*height))
        path.addCurve(to: CGPoint(x: 0.9123*width, y: 0.2935*height), control1: CGPoint(x: 0.86185*width, y: 0.3145*height), control2: CGPoint(x: 0.88594*width, y: 0.2935*height))
        path.addCurve(to: CGPoint(x: 0.97094*width, y: 0.34017*height), control1: CGPoint(x: 0.93897*width, y: 0.2935*height), control2: CGPoint(x: 0.95851*width, y: 0.30906*height))
        path.addCurve(to: CGPoint(x: 0.98957*width, y: 0.46267*height), control1: CGPoint(x: 0.98336*width, y: 0.37128*height), control2: CGPoint(x: 0.98957*width, y: 0.41211*height))
        path.addCurve(to: CGPoint(x: 0.95957*width, y: 0.626*height), control1: CGPoint(x: 0.98957*width, y: 0.53578*height), control2: CGPoint(x: 0.97957*width, y: 0.59022*height))
        path.addCurve(to: CGPoint(x: 0.88685*width, y: 0.67967*height), control1: CGPoint(x: 0.93988*width, y: 0.66178*height), control2: CGPoint(x: 0.91563*width, y: 0.67967*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.90594*width, y: 0.36583*height))
        path.addCurve(to: CGPoint(x: 0.86685*width, y: 0.43933*height), control1: CGPoint(x: 0.89048*width, y: 0.36583*height), control2: CGPoint(x: 0.87745*width, y: 0.39033*height))
        path.addCurve(to: CGPoint(x: 0.84594*width, y: 0.61783*height), control1: CGPoint(x: 0.85624*width, y: 0.48833*height), control2: CGPoint(x: 0.84927*width, y: 0.54783*height))
        path.addLine(to: CGPoint(x: 0.85275*width, y: 0.61783*height))
        path.addCurve(to: CGPoint(x: 0.91094*width, y: 0.56533*height), control1: CGPoint(x: 0.87912*width, y: 0.61783*height), control2: CGPoint(x: 0.89851*width, y: 0.60033*height))
        path.addCurve(to: CGPoint(x: 0.93003*width, y: 0.43933*height), control1: CGPoint(x: 0.92366*width, y: 0.53033*height), control2: CGPoint(x: 0.93003*width, y: 0.48833*height))
        path.addCurve(to: CGPoint(x: 0.92366*width, y: 0.388*height), control1: CGPoint(x: 0.93003*width, y: 0.41911*height), control2: CGPoint(x: 0.92791*width, y: 0.402*height))
        path.addCurve(to: CGPoint(x: 0.90594*width, y: 0.36583*height), control1: CGPoint(x: 0.91972*width, y: 0.37322*height), control2: CGPoint(x: 0.91381*width, y: 0.36583*height))
        path.closeSubpath()
        return path
    }
}
