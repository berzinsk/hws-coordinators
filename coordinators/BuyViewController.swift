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

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        // this could also be inside some button event
        coordinator?.didFinishBuying()
    }
}
