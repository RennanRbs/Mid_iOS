//
//  Product.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//


import Foundation

struct Product: Codable {
    let id: Int
    let title: String
    let productDescription: String
    let used: Bool
    let brand: Brand
    let fallbackPricing: FallbackPricing
    let photos: [String]

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case productDescription = "description"
        case used
        case brand
        case fallbackPricing
        case photos
    }
}

struct Brand: Codable {
    let name, slug: String
    let verified: Bool
}

struct FallbackPricing: Codable {
    let discount: Int
    let price: Price
    let bundleAllowed: Bool
    let state: String
}
