//
//  DescriptionController.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import Foundation

protocol DescriptionDelegate: class {
    func update(productInfo: Product, imageURL: String)
    func update(priceInfo: PriceInfo)
    func change(viewState: ViewState)
}

class DescriptionController {
    
    private weak var delegate: DescriptionDelegate?
        
    init(delegate: DescriptionDelegate) {
        self.delegate = delegate
    }
    
    func initialize() {
        delegate?.change(viewState: .loading)
        fetchProductInfo()
    }
    
    private func fetchProductInfo() {
        ProductAPI().fetch { [weak self] productInfo in
            if let info = productInfo {
                let imageURL = "https://photos.enjoei.com.br/public/500x500/\(info.photos[0])"
                self?.delegate?.update(productInfo: info, imageURL: imageURL)
                self?.fetchPriceInfo()
            } else {
                // error
            }
        }
    }
    
    private func fetchPriceInfo() {
        PriceAPI().fetch { [weak self] priceInfo in
            if let info = priceInfo {
                self?.delegate?.update(priceInfo: info)
                self?.delegate?.change(viewState: .success)
            } else {
                // error
            }
        }
    }
    
}
