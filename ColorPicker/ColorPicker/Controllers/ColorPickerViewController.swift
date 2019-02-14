//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

//protocol ColorPickerViewDelegate {
//   // func userDidChooseColor(color: UIColor)
//
//}


class ColorPickerViewController: UIViewController {

    //var delegate: ColorPickerViewDelegate?
    var completionHandler : ((UIColor)-> Void)? 
        
    

    
    @IBAction func greenButtonTouched() {
       // delegate?.userDidChooseColor(color: ColorAsset.green.color)
        completionHandler?(ColorAsset.green.color)
        
    }
    
    
    @IBAction func orangeButtonTouched() {
       // delegate?.userDidChooseColor(color: ColorAsset.orange.color)
        completionHandler?(ColorAsset.orange.color)
    }
    
    @IBAction func purpleButtonTouched() {
     //   delegate?.userDidChooseColor(color: ColorAsset.purple.color)
        completionHandler?(ColorAsset.purple.color)
    }
    
    
    
}
