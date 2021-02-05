//
//  StoreProfileView.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import UIKit

class StoreProfileView: UIView, LoadableXib {
    
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subTitleLabel: UILabel!
    @IBOutlet private weak var productsForSaleLabel: UILabel!
    @IBOutlet private weak var soldProductsLabel: UILabel!
    @IBOutlet private weak var loadingView: UIView!
    
    private var storeProfileController: StoreProfileController?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadXib()
        createRoundedBorder()
        
        storeProfileController = StoreProfileController(delegate: self)
    }
    
    func initialize() {
        storeProfileController?.initialize()
    }
    
    private func createRoundedBorder() {
        layer.cornerRadius = 3
        layer.borderWidth = 1
        layer.borderColor = UIColor(named: "enjoGray")?.cgColor
        
        avatarImageView.makeRounded()
    }
}

extension StoreProfileView: StoreProfileDelegate {
    func update(title: String, subtitle: String, imageURL: String) {
        titleLabel.text = title
        subTitleLabel.text = subtitle
        avatarImageView.load(url: imageURL)
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
