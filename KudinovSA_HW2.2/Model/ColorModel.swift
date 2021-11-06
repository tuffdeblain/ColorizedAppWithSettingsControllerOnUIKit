//
//  BackgroundModel.swift
//  ColorizedAppWithSettingsControllerOnUIKit
//
//  Created by Сергей Кудинов on 06.11.2021.
//

struct ColorModel {
    let colorMinimumValue: Float
    let colorMaximumValie: Float
    var colorSliderValue: Float
    
    static func getBasicValues() -> ColorModel{
        ColorModel(colorMinimumValue: 0, colorMaximumValie: 1, colorSliderValue: 0)
    }
}
