//
//  DescriptionView.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import UIKit

class DescriptionView: UIView, LoadableXib {
    
    @IBOutlet private weak var brandName: UILabel!
    @IBOutlet private weak var conditionName: UILabel!
    @IBOutlet private weak var productPrice: UILabel!
    @IBOutlet private weak var installmentPrice: UILabel!
    @IBOutlet private weak var productName: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var productImageView: UIImageView!
    @IBOutlet private weak var loadingView: UIView!
    
    private var descriptionController: DescriptionController?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadXib()
        descriptionController = DescriptionController(delegate: self)
    }
    
    func initialize() {
        descriptionController?.initialize()
    }
}

extension DescriptionView: DescriptionDelegate {
    func update(productInfo: Product, imageURL: String) {
        brandName.text = productInfo.brand.name
        conditionName.text = productInfo.used ? "usado" : "novo"
        productName.text = productInfo.title
        descriptionLabel.text = productInfo.productDescription
  
        productImageView.load(url: imageURL)
    }
    
    func update(priceInfo: PriceInfo) {
        productPrice.text = priceInfo.regularPrice.values.price.sale?.currency()
        installmentPrice.text = priceInfo.regularPrice.values.priceSubtitle
    }
    
    func change(viewState: ViewState) {
        switch viewState {
        case .failure:
            print("erro")
        case .loading:
            loadingView.isHidden = false
        case .success:
            loadingView.isHidden = true
        }
    }
}

