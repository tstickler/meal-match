//
//  MainCoordinator.swift
//  MealMatch
//
//  Created by Tyler Stickler on 11/14/20.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate(storyboard: .Main)
        navigationController.pushViewController(vc, animated: false)
    }
}
