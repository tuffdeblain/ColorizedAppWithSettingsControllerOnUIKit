//
//  extensionMainViewController.swift
//  ColorizedAppWithSettingsControllerOnUIKit
//
//  Created by Сергей Кудинов on 06.11.2021.
//

import UIKit

extension MainViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.redColor = redColor
        settingsVC.greenColor = greenColor
        settingsVC.blueColor = blueColor
    }
    
    func setUIColor(red: Float, green: Float, blue: Float) -> UIColor {
        UIColor(red: CGFloat(red),
                            green: CGFloat(green),
                            blue: CGFloat(blue), alpha: 1)
    }
}
