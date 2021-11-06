//
//  ViewController.swift
//  KudinovSA_HW2.2
//
//  Created by Сергей Кудинов on 09.07.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redColor: ColorModel?
    var greenColor: ColorModel?
    var blueColor: ColorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)

        redSlider.maximumValue = redColor?.colorMaximumValie ?? 1
        redSlider.minimumValue = redColor?.colorMinimumValue ?? 0
        redSlider.value = redColor?.colorSliderValue ?? 0.5

        greenSlider.maximumValue = greenColor?.colorMaximumValie ?? 1
        greenSlider.minimumValue = greenColor?.colorMinimumValue ?? 0
        greenSlider.value = greenColor?.colorSliderValue ?? 0.5

        blueSlider.maximumValue = blueColor?.colorMaximumValie ?? 1
        blueSlider.minimumValue = blueColor?.colorMinimumValue ?? 0
        blueSlider.value = blueColor?.colorSliderValue ?? 0.5

        redColorLabel.text = String(redColor?.colorSliderValue ?? 0)
        greenColorLabel.text = String(greenColor?.colorSliderValue ?? 0)
        blueColorLabel.text = String(blueColor?.colorSliderValue ?? 0)
    }
    
    @IBAction func redSliderAction() {
        colorView.backgroundColor = setUIColor(red: redSlider.value,
                                               green: greenSlider.value,
                                               blue: blueSlider.value)
        
        redColor?.colorSliderValue = redSlider.value
        redColorLabel.text = String(round(redSlider.value * 100) / 100)
    }
    
    @IBAction func greenSliderAction() {
        colorView.backgroundColor = setUIColor(red: redSlider.value,
                                               green: greenSlider.value,
                                               blue: blueSlider.value)
        
        greenColor?.colorSliderValue = greenSlider.value
        greenColorLabel.text = String(round(greenSlider.value * 100) / 100)
    }
    
    @IBAction func blueSliderAction() {
        colorView.backgroundColor = setUIColor(red: redSlider.value,
                                               green: greenSlider.value,
                                               blue: blueSlider.value)
        
        blueColor?.colorSliderValue = blueSlider.value
        blueColorLabel.text = String(round(blueSlider.value * 100) / 100)
    }
}


