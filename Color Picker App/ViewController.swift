//
//  ViewController.swift
//  Color Picker App
//
//  Created by user on 16.07.2021.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        colorView.layer.borderWidth = 5
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.backgroundColor = .cyan
    }
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    func updateColor() {
        var red: CGFloat = 0
        var blue: CGFloat = 0
        var green: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
    
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    
    
    @IBAction func switcherValueChanged(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func switchedPicker(_ sender: UISwitch) {
        updateColor()
    }
    
    @IBAction func resetColor(_ sender: UIButton) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 0
        blueSlider.value = 0
        greenSlider.value = 0
        updateColor()
    }
    

}

