//
//  ViewController.swift
//  KudinovSA_HW2.2
//
//  Created by Сергей Кудинов on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorLabel: UILabel!
    @IBOutlet weak var greenColorLabel: UILabel!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        redSlider.value = 0

        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.value = 0

        blueSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.value = 0

        redColorLabel.text = String(redSlider.value)
        greenColorLabel.text = String(greenSlider.value)
        blueColorLabel.text = String(blueSlider.value)
    }
    @IBAction func redSliderAction() {
        colorView.backgroundColor = #colorLiteral(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: 1.0)

        redColorLabel.text = String(round(redSlider.value * 100) / 100)
        //colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1) Можно еще так
    }
    
    @IBAction func greenSliderAction() {
        colorView.backgroundColor = #colorLiteral(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: 1.0)
        
        greenColorLabel.text = String(round(greenSlider.value * 100) / 100)
    }
    
    @IBAction func blueSliderAction() {
        colorView.backgroundColor = #colorLiteral(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value, alpha: 1.0)
        
        blueColorLabel.text = String(round(blueSlider.value * 100) / 100)
    }
}

