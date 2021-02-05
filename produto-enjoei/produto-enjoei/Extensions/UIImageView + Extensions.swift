//
//  UIImageView + Extensions.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import UIKit

extension UIImageView {
    
    func makeRounded() {
        let radius = self.frame.width/2.0
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    func load(url: String) {
        
        guard let url = URL(string: url) else { return }
        
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

