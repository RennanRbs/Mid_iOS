//
//  StoreAPI.swift
//
//  Created by lino.
//  Copyright © 2020 enjoei. All rights reserved.
//

import Foundation

class StoreAPI {
    
    func fetch(then completion:@escaping (Store?) -> Void){
        
        guard let url = URLManager.shared[EndpointID.store.rawValue] else {
            completion(nil)
            return
        }
        
        APIAccess().fetch(model: Store.self, url: url){ store in
            completion(store)
        }
    }
    
}
