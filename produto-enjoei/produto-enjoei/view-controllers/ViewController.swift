//
//  ViewController.swift
//
//  Created by lino.
//  Copyright © 2020 enjoei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customNavBar: CustomNavBar!
    @IBOutlet weak var descriptionView: DescriptionView!
    @IBOutlet weak var storeProfileView: StoreProfileView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        storeProfileView.initialize()
        descriptionView.initialize()
    }
}

