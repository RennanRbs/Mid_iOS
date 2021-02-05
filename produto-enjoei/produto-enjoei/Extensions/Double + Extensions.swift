//
//  Double + Extensions.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import Foundation

extension Double {
    
    func currency() -> String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        
        currencyFormatter.locale = Locale(identifier: "pt-br")
        
        guard let currencyString = currencyFormatter.string(from: NSNumber(value: self)) else {
            return String()
        }
        
        return currencyString
    }
}

