//
//  BuyCoordinator.swift
//  coordinators
//
//  Created by karlis.berzins on 02/08/2019.
//  Copyright © 2019 karlis.berzins. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    weak var parentCoordinator: MainCoordinator?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        // We could actually remove this required method from Coordinator protocol so that we don't have empty start method for all coordinators
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func start(withProduct product: Int) {
        let vc = BuyViewController.instantiate()
        vc.selectedProduct = product
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}


