//
//  URLManager.swift
//
//  Created by ana thayna.
//  Copyright © 2020 enjoei. All rights reserved.
//

import Foundation

enum EndpointID: String {
    case store = "store-info"
    case product = "product-info"
    case price = "price-info"
}

class URLManager {
    
    static let shared = URLManager()
    private var urls: [String:URL] = [:]
    
    private init() {
        
        if let url = Bundle.main.url(forResource: "urls", withExtension: "json") {
            
            do {
                
                let data = try Data(contentsOf: url)
                let urls = try JSONDecoder().decode([String:URL].self, from: data)
                self.urls = urls
                
            } catch {
                print("Can't find urls.json!")
            }
        }
    }
    
    subscript(key: String) -> URL? {
        return urls[key]
    }
}

