//
//  PriceAPI.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import Foundation

class PriceAPI {
    
    func fetch(then completion:@escaping (PriceInfo?) -> Void){
        
        guard let url = URLManager.shared[EndpointID.price.rawValue] else {
            completion(nil)
            return
        }
        
        APIAccess().fetch(model: PriceInfo.self, url: url){ priceInfo in
            completion(priceInfo)
        }
    }
    
}

