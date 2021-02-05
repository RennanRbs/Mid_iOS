//
//  StoreProfileControllerViewController.swift
//  produto-enjoei
//
//  Created by Rennan Rebouças on 22/01/21.
//

import Foundation

protocol StoreProfileDelegate: class {
    func update(title: String, subtitle: String, imageURL: String)
    func change(viewState: ViewState)
}

class StoreProfileController {
    
    private weak var delegate: StoreProfileDelegate?
    
    private var avatar: String = String()
    
    init(delegate: StoreProfileDelegate) {
        self.delegate = delegate
    }
    
    func initialize() {
        delegate?.change(viewState: .loading)
        fetchStoreInfo()
    }
    
    private func fetchStoreInfo() {
        StoreAPI().fetch { [weak self] store in
            if let store = store {
                let imageURL = "https://photos.enjoei.com.br/public/500x500/\(store.avatar.imagePublicId)"
                self?.delegate?.update(title: store.title, subtitle: store.subtitle, imageURL: imageURL)
                self?.delegate?.change(viewState: .success)
            } else {
                // error
            }
        }
    }
    
}

