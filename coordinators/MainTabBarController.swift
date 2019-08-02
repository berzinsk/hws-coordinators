//
//  MainTabBarController.swift
//  coordinators
//
//  Created by karlis.berzins on 02/08/2019.
//  Copyright © 2019 karlis.berzins. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    // Here we would actually initiate all main coordinators which we would add for each tap
    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        mainCoordinator.start() // If we would have multiple coorinators it would be better to have this start method inside coordinator init method so that we wouldn't need to call start for all coordinators
        viewControllers = [mainCoordinator.navigationController]
    }
}
