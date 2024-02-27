//
//  String.swift
//  SwiftUICrypto
//
//  Created by Filipe Patricio on 27/02/2024.
//

import Foundation

extension String{
    var removingHTMLOccurences: String{
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
