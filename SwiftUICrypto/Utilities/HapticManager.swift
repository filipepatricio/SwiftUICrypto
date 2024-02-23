//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 23/02/2024.
//

import Foundation
import SwiftUI

class HapticManager{
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType){
        generator.notificationOccurred(type)
    }
}
