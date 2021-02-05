//
//  Store.swift
//
//  Created by lino.
//  Copyright © 2020 enjoei. All rights reserved.
//

import Foundation

struct Store : Codable {
    let shortName: String
    let avatar: Avatar
    let title: String
    let subtitle: String
}

struct Avatar: Codable {
    let imagePublicId: String
}

