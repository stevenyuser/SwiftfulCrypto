//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Steven Yu on 10/10/21.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
