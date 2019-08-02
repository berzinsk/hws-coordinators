//
//  BuyViewController.swift
//  coordinators
//
//  Created by karlis.berzins on 02/08/2019.
//  Copyright © 2019 karlis.berzins. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    weak var coordinator: BuyCoordinator?
    @IBOutlet weak var selectedProductLabel: UILabel!
    var selectedProduct = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        selectedProductLabel.text = "Selected product: \(selectedProduct)"
    }
}
