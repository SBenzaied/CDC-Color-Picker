//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import UIKit

protocol ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor)
}


class ColorPickerViewController: UIViewController {

    var delegate: ColorPickerViewDelegate?
    
    @IBAction func greenButtonTouched() {
        delegate?.userDidChooseColor(color: ColorAsset.green.color)
    }
    
    
    @IBAction func orangeButtonTouched() {
        delegate?.userDidChooseColor(color: ColorAsset.orange.color)
    }
    
    @IBAction func purpleButtonTouched() {
        delegate?.userDidChooseColor(color: ColorAsset.purple.color)
    }
    
}
