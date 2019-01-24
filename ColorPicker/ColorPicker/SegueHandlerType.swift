//
//  SegueHandlerType.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit
import Foundation

protocol SegueHandlerType {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController,
    SegueIdentifier.RawValue == String
{
    
    func performSegueWithIdentifier(_ segueIdentifier: SegueIdentifier,
                                    sender: AnyObject?) {
        
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
    }
    
    func segueIdentifierForSegue(_ segue: UIStoryboardSegue) -> SegueIdentifier {
        
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else { fatalError("Invalid segue identifier \(segue.identifier).") }
        
        return segueIdentifier
    }
}
