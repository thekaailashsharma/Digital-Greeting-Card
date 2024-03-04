//
//  InitNavigation.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import Foundation
import SwiftUI

func initNavigation(navBarAppearence: UINavigationBarAppearance, bgColor: UIColor, fgColor: UIColor) {
    navBarAppearence.configureWithOpaqueBackground()
    navBarAppearence.backgroundColor = UIColor.init(Color(uiColor: bgColor))
    
    navBarAppearence.titleTextAttributes = [
        .foregroundColor: UIColor.init(Color(uiColor: fgColor))
    ]
    navBarAppearence.largeTitleTextAttributes = [
        .foregroundColor : UIColor.init(Color(uiColor: fgColor))
    ]
        
    UINavigationBar.appearance().standardAppearance = navBarAppearence
    UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearence
}
