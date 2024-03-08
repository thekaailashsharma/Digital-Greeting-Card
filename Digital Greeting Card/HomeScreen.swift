//
//  HomeScreen.swift
//  Digital Greeting Card
//
//  Created by Kailash on 08/03/24.
//

import SwiftUI

struct HomeScreen: View {
    
    let navBarAppearence = UINavigationBarAppearance()
    init() {
        initNavigation(
            navBarAppearence: navBarAppearence,
            bgColor: UIColor(Color("bg")),
            fgColor: UIColor(Color("navTitle")))
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("bg")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Spacer()
                        NavigationLink {
                            AppleLogo()
                        } label: {
                            HStack {
                                Text("Apple Logo")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                        }
                        .padding()
                        Spacer()
                        NavigationLink {
                            SlackAnimation()
                        } label: {
                            HStack {
                                Text("Slack Animation")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                        }
                        .padding()
                        
                        Spacer()
                        
                        NavigationLink {
                            ContentView()
                        } label: {
                            HStack {
                                Text("Create a Wish")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                
                                Spacer()
                            }
                        }
                        .padding()
                        
                        Spacer()
                        
                        NavigationLink {
                            ReceiveCard(presenter: NVFlipCardPresenter())
                        } label: {
                            HStack {
                                Text("Cards")
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                Spacer()
                            }
                        }
                        .padding()
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()

                }
            }
            .background(Color("bg"))
            .navigationTitle("Cards")
        }
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
    }
}
