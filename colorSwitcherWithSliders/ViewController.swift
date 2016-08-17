//
//  ViewController.swift
//  colorSwitcherWithSliders
//
//  Created by Paul Campbell on 8/17/16.
//  Copyright © 2016 Nimble Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set colorView on launch
        changeColorComponent()
    }

    @IBAction func changeColorComponent() {
        let currentRedValue = self.redControl.value
        let r: CGFloat = CGFloat(currentRedValue)
        let currentGreenValue = self.greenControl.value
        let g: CGFloat = CGFloat(currentGreenValue)
        let currentBlueValue = self.blueControl.value
        let b: CGFloat = CGFloat(currentBlueValue)
        
//        print rgb values
//        print("r = \(currentRedValue)")
//        print("g = \(currentGreenValue)")
//        print("b = \(currentBlueValue)")
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

