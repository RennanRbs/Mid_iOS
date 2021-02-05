//
//  JSONDecoder.swift
//
//  Created by ana thayna.
//  Copyright © 2020 enjoei. All rights reserved.
//

import Foundation

extension JSONDecoder {
    static var `default`: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()
}
