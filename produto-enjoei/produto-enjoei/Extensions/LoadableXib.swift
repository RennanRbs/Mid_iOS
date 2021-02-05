//
//  LoadableXib.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import UIKit

protocol LoadableXib: UIView {}

extension LoadableXib {
    func loadXib() {
        guard let viewFromXib = Bundle.main.loadNibNamed(String(describing: Self.self), owner: self, options: nil)?.first as? UIView else { return }
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
}

