//
//  Coordinator.swift
//  MealMatch
//
//  Created by Tyler Stickler on 11/14/20.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
