//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SegueHandlerType {
    
    enum SegueIdentifier: String {

        case picker
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segueIdentifierForSegue(segue){
        case .picker:
            let destVC = segue.destination as! ColorPickerViewController
            destVC.delegate = self
            break
            
            
        }

        
    }

    
}


extension ViewController: ColorPickerViewDelegate{
    func userDidChooseColor(color: UIColor) {
        self.view.backgroundColor = color
        dismiss(animated: true, completion: nil)
    }
   

}







