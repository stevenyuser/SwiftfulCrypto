//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Steven Yu on 10/16/21.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
