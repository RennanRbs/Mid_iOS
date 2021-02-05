//
//  PriceInfo.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import Foundation

struct PriceInfo: Codable {
    let id: Int
    let regularPrice: RegularPrice
}

struct RegularPrice: Codable {
    let values: Values
}

struct Values: Codable {
    let discount: Int
    let tagText: String
    let priceSubtitle: String
    let price: Price
}

struct Price: Codable {
    let listed, sale: Double?
}
