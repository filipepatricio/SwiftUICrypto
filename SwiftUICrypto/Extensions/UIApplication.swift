//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 22/02/2024.
//

import Foundation
import SwiftUI

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
