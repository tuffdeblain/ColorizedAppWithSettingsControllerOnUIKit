//
//  MainViewController.swift
//  ColorizedAppWithSettingsControllerOnUIKit
//
//  Created by Сергей Кудинов on 06.11.2021.
//

import UIKit

class MainViewController: UIViewController {

    var redColor = ColorModel.getBasicValues()
    var greenColor = ColorModel.getBasicValues()
    var blueColor = ColorModel.getBasicValues()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = setUIColor(red: redColor.colorMinimumValue,
                                          green: greenColor.colorMinimumValue,
                                          blue: blueColor.colorMinimumValue)
    }
    
    @IBAction func unwindToMainController(sender: UIStoryboardSegue) {
        if let settingsViewController = sender.source as? SettingsViewController {
            view.backgroundColor = setUIColor(red: settingsViewController.redSlider.value,
                                              green: settingsViewController.greenSlider.value,
                                              blue: settingsViewController.blueSlider.value)
        }
    }
}


