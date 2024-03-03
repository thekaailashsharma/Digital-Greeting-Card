//
//  CreateWish.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import SwiftUI

struct CreateWish: View {
    // Remove after done :)
    var navBarAppearance = UINavigationBarAppearance()
    
    init() {
        initNavigation(navBarAppearence: navBarAppearance)
    }
    
    var body: some View {
        ZStack {
            Color("bg")
                .ignoresSafeArea()
            
            ScrollView {
                
            }
            .navigationBarTitle("Create Your Wish")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "arrowshape.turn.up.backward")
                        .renderingMode(.template)
                        .resizable()
                        .foregroundStyle(Color("navTitle").gradient)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Text("Share")
                        .foregroundColor(Color("orange"))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}





struct CreateWish_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateWish()
        }
    }
}
