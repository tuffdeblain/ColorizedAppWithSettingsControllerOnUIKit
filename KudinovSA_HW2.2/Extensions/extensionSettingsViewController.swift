//
//  extensionSettingsViewController.swift
//  ColorizedAppWithSettingsControllerOnUIKit
//
//  Created by Сергей Кудинов on 06.11.2021.
//

import UIKit

extension SettingsViewController {
    func setUIColor(red: Float, green: Float, blue: Float) -> UIColor {
        UIColor(red: CGFloat(red),
                            green: CGFloat(green),
                            blue: CGFloat(blue), alpha: 1)
    }
}
