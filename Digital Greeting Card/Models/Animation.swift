//
//  Model.swift
//  Digital Greeting Card
//
//  Created by Admin on 03/03/24.
//

import Foundation
import SwiftUI

func performAnimation(withDelay delay: TimeInterval, duration: TimeInterval, toggleAction: @escaping () -> Void) {
    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
        withAnimation(.easeInOut(duration: duration)) {
            toggleAction()
        }
    }
}



