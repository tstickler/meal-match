//
//  Storyboarded.swift
//  MealMatch
//
//  Created by Tyler Stickler on 11/14/20.
//

import UIKit

protocol Storyboarded {
    static func instantiate(storyboard: Storyboard) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(storyboard: Storyboard) -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: className) as! Self
    }
}

enum Storyboard: String {
    case Main
}
