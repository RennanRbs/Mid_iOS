//
//  CustomNavBar.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import UIKit

class CustomNavBar: UIView, LoadableXib {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadXib()
    }

}
