//
//  APIAccess.swift
//
//  Created by ana thayna.
//  Copyright © 2020 enjoei. All rights reserved.
//

import Foundation

class APIAccess {
    
    private var task: URLSessionDataTask?
    
    private let session: URLSession = {
        return URLSession(configuration: URLSessionConfiguration.default)
    }()
    
    func fetch<K:Decodable>(model:K.Type, url:URL,
                            customHeaders: [String:String] = [:],
                            callback:@escaping (K?) -> Void) {
        
        let completion:(K?) -> Void = { data in
            DispatchQueue.main.async {
                callback(data)
            }
        }
        
        guard url.host?.hasSuffix(".enjoei.com.br") == true else {
            print("request/data error: invalid url domain")
            completion(nil)
            return
        }
        
        var request = URLRequest(url: url)
        
        request.setValue("br.com.enjoei.enjoy", forHTTPHeaderField: "x-app-bundle")
        request.setValue("0.0.1", forHTTPHeaderField: "x-app-version")
        request.setValue("ios", forHTTPHeaderField: "x-enjoei-mobile-webview")
        
        for (key, value) in customHeaders {
            request.setValue(value, forHTTPHeaderField: key)
        }
        
        task = session.dataTask(with: request) { (rawData, _, error) in
            
            guard let data = rawData, error == nil else {
                print("request/data error: ", error ?? "<empty error log>", separator: "\n")
                completion(nil)
                return
            }
            
            do {
                let response:K? = try JSONDecoder.default.decode(model, from: data)
                completion(response)
             } catch let jsonError {
                print("decoding error: ", jsonError)
                completion(nil)
             }
            
        }
        
        task?.resume()
    }
}
