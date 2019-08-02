//
//  ViewController.swift
//  coordinators
//
//  Created by karlis.berzins on 02/08/2019.
//  Copyright © 2019 karlis.berzins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    @IBOutlet weak var product: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buyTapped(_ sender: UIButton) {
        coordinator?.buySubscription(to: product.selectedSegmentIndex)
    }
    
    @IBAction func createAccount(_ sender: UIButton) {
        coordinator?.createAccount()
    }
}
