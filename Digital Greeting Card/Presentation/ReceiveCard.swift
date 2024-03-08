//
//  ReceiveCard.swift
//  Digital Greeting Card
//
//  Created by Kailash on 08/03/24.
//

import SwiftUI

struct ReceiveCard: View {
    
    let greetingCards: [GreetingCard] = [
        GreetingCard(imageName: "gree", title: "Birthday"),
        GreetingCard(imageName: "gree1", title: "Anniversary"),
        GreetingCard(imageName: "gree2", title: "Congratulations"),
        GreetingCard(imageName: "gree3", title: "Thank You"),
        GreetingCard(imageName: "gree4", title: "Get Well Soon"),
        GreetingCard(imageName: "gree5", title: "Sympathy"),
        GreetingCard(imageName: "gree6", title: "Good Luck"),
        GreetingCard(imageName: "gree7", title: "Thinking of You")
        // Add more greeting cards as needed
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    let navBarAppearence = UINavigationBarAppearance()
    @ObservedObject var presenter: NVFlipCardPresenter
    @ObservedObject var presenter2: NVFlipCardPresenter = NVFlipCardPresenter()
    @State var isGreetingVisible: Bool = false
    
    init(presenter: NVFlipCardPresenter) {
        self.presenter = presenter
        initNavigation(
            navBarAppearence: navBarAppearence,
            bgColor: UIColor(Color("bg")),
            fgColor: UIColor(Color("navTitle")))
        
        for family in UIFont.familyNames {
                 print(family)
                 for names in UIFont.fontNames(forFamilyName: family){
                 print("== \(names)")
                 }
            }
    }
    
    
    @State var text: String = ""
    @State var isStarted: Bool = false
    let finalText: String = "Happy Women’s Day Maa.  Thank you for being the best mom out there.  You deserve all the flowers."
    
    @State var signature: String = ""
    let finalSignature: String = "With Love \n Kailash"
    
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            text = ""
        }
        if position < finalText.count {
            withAnimation {
                isStarted = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                text.append(finalText[position])
                typeWriter(at: position + 1)
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                text = finalText
                typeWriterSign()
            }
        }
    }
    
    func typeWriterSign(at position: Int = 0) {
        if position < finalSignature.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                signature.append(finalSignature[position])
                typeWriterSign(at: position + 1)
            }
        }
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(greetingCards) { card in
                        VStack {
                            Image(card.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 200)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                            
                            Text(card.title)
                                .font(.headline)
                                .padding(.top, 5)
                        }
                    }
                }
                .padding()
            }
            VStack {
                if !presenter.isFlipped {
                    Image("Snapseed")
                        .resizable()
                        .frame(width: 130, height: 130)
                        .aspectRatio(1.0, contentMode: .fit)
                        .clipShape(Circle())
                        .overlay {
                            VStack {
                                Spacer()
                                
                                Text("Sent you a card")
                                    .foregroundColor(.black)
                                    .bold()
                                    .offset(y: 80)
                                
                                HStack {
                                    
                                    Button {
                                        
                                        presenter.flipButtonTapped()
                                        
                                    } label: {
                                        Text("Open")
                                            .foregroundColor(.white)
                                    }
                                    .buttonStyle(.plain)
                                    .padding()
                                    .padding(.horizontal)
                                    .background(Color("red").opacity(0.7))
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .offset(y: 80)
                                }
                                
                            }
                            .frame(width: 150, height: 150)
                        }
                        .offset(y: -10)
                        .opacity(presenter.isFlipped ? 0 : 1)
                } else {
                    VStack {
                        Spacer()
//                        Image("img 1")
//                            .resizable()
//                            .frame(width: 150, height: 150)
//                            .overlay {
//                                VStack {
                        
                        ZStack {
                            if presenter2.isFlipped {
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .shadow(radius: 10)
                                
                            
                                VStack {
                                    Text(text)
                                        .foregroundColor(.black)
                                        .font(.title)
                                        .padding(.all, 3)
                                        .multilineTextAlignment(.leading)
                                    
                                    HStack {
                                        Text(signature)
                                            .font(.custom("Southam Demo", size: 35))
                                            .foregroundColor(.black)
                                            .font(.caption)
                                            .padding(.all, 8)
                                            .lineSpacing(6)
                                            .multilineTextAlignment(.leading)
                                        
                                        Spacer()
                                    }
                                }
                                .rotation3DEffect(.degrees(presenter2.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                                .animation(.easeInOut, value: presenter2.isFlipped)
                                .padding(20)
                                .multilineTextAlignment(.center)
                                
                            }
                            else {
                                Image("gree5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            }
                            
                        }
                        .rotation3DEffect(.degrees(presenter2.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                        .animation(.easeInOut, value: presenter2.isFlipped)
                        .frame(width: 350, height: 450)
                        
                        
                       
//                                }
                                
//                            }
//                            .frame(width: 150, height: 150)
                        
                            Spacer()
                        
                        HStack {
                            Spacer()
                            Button {
                                typeWriter()
                            } label: {
                                Image(systemName: "memories")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25, height: 25)
                                    .padding()
                                    .background(Color("red"))
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                            }
                            .padding()
                            .padding(.vertical, 50)
                            
                            Spacer()
                            
                            Button {
                                withAnimation {
                                    typeWriter()
                                    presenter2.flipButtonTapped()
                                }
                               
                            } label: {
                                Image(systemName: isStarted ? "pause": "play.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25, height: 25)
                                    .padding()
                                    .background(Color("red"))
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                            }
                            .padding()
                            .padding(.vertical, 50)
                            
                            Spacer()
                            
                            Button {
                                typeWriter()
                            } label: {
                                Image(systemName: "airplayaudio")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25, height: 25)
                                    .padding()
                                    .background(Color("red"))
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                                
                            }
                            .padding()
                            .padding(.vertical, 50)
                            
                            Spacer()
                        }

                    }
                    
                    
                }
            }
            .background {
                Image("blur")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(
                        width: presenter.isFlipped ? UIScreen.main.bounds.width: 250,
                        height: presenter.isFlipped ? UIScreen.main.bounds.height: 350
                    )
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .blur(radius: 3.0)
                    .border(.white.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .rotation3DEffect(.degrees(presenter.isFlipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                    .animation(.easeInOut, value: presenter.isFlipped)
                
            }
            .opacity(isGreetingVisible ? 1 : 0)
            .scaleEffect(isGreetingVisible ? 1 : 0)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    withAnimation {
                        isGreetingVisible.toggle()
                    }
                    }
                    
            }
            
            
            
            
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color("bg").opacity(0.5))
                    .frame(width: 150, height: 60)
                    .overlay {
                        Button(action: {
                            withAnimation(.easeInOut) {
                                isGreetingVisible.toggle()
                            }
                        }, label: {
                            VStack {
                                Text("You got a card ❤️")
                                    .foregroundColor(.white)
                                
                                Rectangle()
                                    .frame(height: 1)
                            }
                        })
                        
                    }
                    .offset(x: UIScreen.main.bounds.width / 3.5)
                    .offset(y: 0)
                    .opacity(presenter.isFlipped ? 0 : 1)
                
            }
        }
        .background(Color("bg"))
        .navigationTitle("Cards")
        .navigationBarHidden(presenter.isFlipped ? true : false)
        .ignoresSafeArea(presenter.isFlipped ? .all: [])
        
    }
    

}

#Preview {
    ReceiveCard(presenter: NVFlipCardPresenter())
}

struct GreetingCard: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
}

protocol NVFlipCardPresenterProtocol: ObservableObject {
    var isFlipped: Bool { get }
    func flipButtonTapped()
}

class NVFlipCardPresenter: NVFlipCardPresenterProtocol {
    @Published var isFlipped: Bool = false
    
    func flipButtonTapped() {
        isFlipped.toggle()
    }
}

struct OpenCardView: View {
    var body: some View {
        Text(
            "Love is when the other person's happiness is more important than you"
        )
        .font(.largeTitle)
        .padding(.horizontal, 30)
        .foregroundColor(.white.opacity(0.9))
        .multilineTextAlignment(.center)
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}


