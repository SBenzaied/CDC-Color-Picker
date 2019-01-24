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
        
        let ancienne = self.view.backgroundColor
        
        self.view.backgroundColor = color
        
        dismiss(animated: true, completion: nil)
        
        
        let alert = UIAlertController(title: "Change color?", message: "Voulez-vous changer la couleur ?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        alert.addAction(UIAlertAction(title: "Non", style: .default, handler: { action in
    
            UIView.animate(withDuration: 2, animations:{self.view.backgroundColor = ancienne })
    }))
        
        self.present(alert, animated: true)
    }
   

}







