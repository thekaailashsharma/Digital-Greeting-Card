//
//  InitNavigation.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import Foundation
import SwiftUI

func initNavigation(navBarAppearence: UINavigationBarAppearance) {
    navBarAppearence.configureWithOpaqueBackground()
    navBarAppearence.backgroundColor = UIColor.init(Color("bg"))
    
    navBarAppearence.titleTextAttributes = [
        .foregroundColor: UIColor.init(Color("navTitle"))
    ]
    navBarAppearence.largeTitleTextAttributes = [
        .foregroundColor:UIColor.init(Color("navTitle"))
    ]
        
    UINavigationBar.appearance().standardAppearance = navBarAppearence
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearence
}
