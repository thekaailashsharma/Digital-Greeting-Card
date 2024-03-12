//
//  AppleLogo.swift
//  Digital Greeting Card
//
//  Created by Admin on 06/03/24.
//

import SwiftUI
import Vision

struct AppleLogo: View {
    
    @State private var dashEffect : CGFloat = -50
    @State private var rotation : CGFloat = 0.0
    @State private var appleRotation : CGFloat = 0.0
    @State private var appleTextRotation : CGFloat = 180
    @State var endAngle: Double = -190
    @State var disapper: Bool = false
    @State var appleTextVisiblity: Bool = false
    @State var ShakeDevice: Bool = false
    
    var body: some View {
//        Arc(
//            center: CGPoint(
//                x: UIScreen.main.bounds.width / 2 + 300,
//                y: UIScreen.main.bounds.height / 2),
//            radius: 180,
//            endAngle: self.endAngle
//        )
        
        ZStack {
            
            LinearGradient(colors: [.black, .black], startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
           
            if endAngle != 180 {
                MKSymbolShape(systemName: "applelogo")
                    .stroke(
                        LinearGradient(colors: [.yellow, .orange, .pink, .red], startPoint: .top, endPoint: .bottom), style: StrokeStyle(
                            lineWidth: 3,
                            lineCap: .round,
                            dash: [0, 1.0],
                            dashPhase: rotation == 360 ? 0 : dashEffect))
                    .aspectRatio(CGSize(width: 30, height: 36), contentMode: .fit)
                    .animation(
                        .linear(duration: 0.5).speed(0.5),
                        value: dashEffect)
                    .rotation3DEffect(
                        .degrees(
                            appleRotation
                        ),
                        axis: (x: 0, y: 180, z: 0))
                    .opacity(appleRotation == 180 ? 0 : 1)
                    .padding()
                    .mask {
                        MKSymbolShape(systemName: "applelogo")
                            .stroke(
                                LinearGradient(colors: [.yellow, .orange, .pink, .red], startPoint: .top, endPoint: .bottom), style: StrokeStyle(
                                    lineWidth: 8,
                                    lineCap: .round,
                                    dash: [0, 1.0],
                                    dashPhase: dashEffect))
                            .aspectRatio(CGSize(width: 30, height: 36), contentMode: .fit)
                            .rotationEffect(.degrees(rotation))
                            .animation(
                                .linear(duration: 0.5).speed(0.5),
                                value: dashEffect)
                            .padding()
                        
                    }
                    .shadow(color: .white, radius: 300)
                    .blendMode(.screen)
                
                LinearGradient(colors: [.orange, .pink, .red], startPoint: .top, endPoint: .bottom)
                    .blendMode(.color)
                    .overlay {
                        Text("Shake the device to start Animation")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .opacity(ShakeDevice ? 0 : 1)
                    }
            }
           
            VStack(spacing: 0) {
                SemicircleShape(endAngle: endAngle)
                    .trim(from: 0.0, to: 180)
                    .stroke(Color.white, lineWidth: 5)
                    .offset(y: -300)
                SemicircleShape(endAngle: endAngle)
                    .trim(from: 0.0, to: 180)
                    .stroke(Color.white, lineWidth: 5)
                    .offset(y: -450)
            }
            .opacity(endAngle == 190 ? 1: 0)
            .opacity(disapper ? 0: 1)
            
            Text("Apple")
                .font(.system(size: 100))
                .rotation3DEffect(
                    .degrees(
                        appleTextRotation
                    ),
                    axis: (x: 0, y: 180, z: 0))
                .overlay {
                    LinearGradient(
                        colors: [.white, .white.opacity(0.6), .white.opacity(0.4)],
                        startPoint: .topLeading,
                        endPoint: .trailing
                    )
                    .mask(
                        Text("Apple")
                            .font(.system(size: 100))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .rotation3DEffect(
                                .degrees(
                                    appleTextRotation
                                ),
                                axis: (x: 0, y: 180, z: 0))
                    )
                }
                .opacity(appleTextVisiblity ? 1 : 0)
            

        }
        .onShake {
           
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation {
                    ShakeDevice = true
                }
                print("Shaked")
                dashEffect = 50
                
                //            withAnimation(.interactiveSpring(
                //                response: 1,
                //                dampingFraction: 0.5,
                //                blendDuration: 6
                //            ).speed(0.5)) {
                //                rotation = 360
                //            }
                withAnimation(.linear(duration: 6).speed(0.5)) {
                    rotation = 360
                    
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
                        withAnimation(
                            .interactiveSpring(
                                response: 2,
                                dampingFraction: 0.5,
                                blendDuration: 0.5
                            ).speed(0.8)) {
                                appleRotation = 160
                                appleTextRotation = 20
                                appleTextVisiblity.toggle()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    withAnimation(
                                        .interactiveSpring(
                                            response: 2,
                                            dampingFraction: 0.25,
                                            blendDuration: 2
                                        ).speed(0.8)) {
                                            appleRotation = 180
                                            appleTextRotation = 0
                                        }
                                }
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    withAnimation(Animation.linear(duration: 2)) {
                                        self.endAngle = 190
                                        self.disapper.toggle()
                                    }
                                }
                                
                            }
                    }
                }
            }



        }
    }
}

struct SemicircleShape: Shape {
    
    var endAngle: Double

    var animatableData: CGFloat {     // << here !!
        get { CGFloat(endAngle) }
        set { endAngle = Double(newValue) }
    }
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(
            rect.width + 300, rect.height)
        
        var path = Path()
        path.addArc(
            center: center,
            radius: radius,
            startAngle: .degrees(0),
            endAngle: .degrees(endAngle),
            clockwise: false
        )
        
        return path
    }
}

struct AppleLogo_Previews: PreviewProvider {
    static var previews: some View {
        AppleLogo()
    }
}

struct MKSymbolShape: InsettableShape {
    var insetAmount = 0.0
    let systemName: String
    
    var trimmedImage: UIImage {
        let cfg = UIImage.SymbolConfiguration(pointSize: 256.0)
        // get the symbol
        guard let imgA = UIImage(systemName: systemName, withConfiguration: cfg)?.withTintColor(.black, renderingMode: .alwaysOriginal) else {
            fatalError("Could not load SF Symbol: \(systemName)!")
        }
        
        // we want to "strip" the bounding box empty space
        // get a cgRef from imgA
        guard let cgRef = imgA.cgImage else {
            fatalError("Could not get cgImage!")
        }
        // create imgB from the cgRef
        let imgB = UIImage(cgImage: cgRef, scale: imgA.scale, orientation: imgA.imageOrientation)
            .withTintColor(.black, renderingMode: .alwaysOriginal)
        
        // now render it on a white background
        let resultImage = UIGraphicsImageRenderer(size: imgB.size).image { ctx in
            UIColor.white.setFill()
            ctx.fill(CGRect(origin: .zero, size: imgB.size))
            imgB.draw(at: .zero)
        }
        
        return resultImage
    }
    
    func path(in rect: CGRect) -> Path {
        // cgPath returned from Vision will be in rect 0,0 1.0,1.0 coordinates
        //  so we want to scale the path to our view bounds
        
        let inputImage = self.trimmedImage
        guard let cgPath = detectVisionContours(from: inputImage) else { return Path() }
        let scW: CGFloat = (rect.width - CGFloat(insetAmount)) / cgPath.boundingBox.width
        let scH: CGFloat = (rect.height - CGFloat(insetAmount)) / cgPath.boundingBox.height
        
        // we need to invert the Y-coordinate space
        var transform = CGAffineTransform.identity
            .scaledBy(x: scW, y: -scH)
            .translatedBy(x: 0.0, y: -cgPath.boundingBox.height)
        
        if let imagePath = cgPath.copy(using: &transform) {
            return Path(imagePath)
        } else {
            return Path()
        }
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var shape = self
        shape.insetAmount += amount
        return shape
    }
    
    func detectVisionContours(from sourceImage: UIImage) -> CGPath? {
        let inputImage = CIImage.init(cgImage: sourceImage.cgImage!)
        let contourRequest = VNDetectContoursRequest()
        contourRequest.revision = VNDetectContourRequestRevision1
        contourRequest.contrastAdjustment = 1.0
        contourRequest.maximumImageDimension = 512
        
        let requestHandler = VNImageRequestHandler(ciImage: inputImage, options: [:])
        try! requestHandler.perform([contourRequest])
        if let contoursObservation = contourRequest.results?.first {
            return contoursObservation.normalizedPath
        }
        
        return nil
    }
}
