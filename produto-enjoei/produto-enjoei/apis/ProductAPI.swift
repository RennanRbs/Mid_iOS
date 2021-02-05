//
//  ProductAPI.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import Foundation

class ProductAPI {
    
    func fetch(then completion:@escaping (Product?) -> Void){
        
        guard let url = URLManager.shared[EndpointID.product.rawValue] else {
            completion(nil)
            return
        }
        
        APIAccess().fetch(model: Product.self, url: url){ product in
            completion(product)
        }
    }
    
}

