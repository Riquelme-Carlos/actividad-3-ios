//
//  ViewController.swift
//  2857176_act3_real
//
//  Created by Alumno on 09/02/24.
//

import UIKit

class ViewController: UIViewController {

    // Acceder a los atributos de los outlets
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    @IBOutlet weak var alphaSliderOutlet: UISlider!
    
    //Acceder a los atributos de los labels
    
    @IBOutlet weak var labelRedOutlet: UILabel!
    @IBOutlet weak var labelGreenOutlet: UILabel!
    @IBOutlet weak var labelBlueOutlet: UILabel!
    @IBOutlet weak var labelAlphaOutlet: UILabel!
    
    @IBOutlet weak var spidermanImageOutlet: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //   Actions para los sliders
        @IBAction func redSliderAction(_ sender: UISlider) {
            let redValue = Int(sender.value)
            labelRedOutlet.text = "\(redValue)"
            changeColor()
        }
        
        @IBAction func greenSliderAction(_ sender: UISlider) {
            let greenValue = Int(sender.value)
            labelGreenOutlet.text = "\(greenValue)"
            changeColor()
        }
        
        
        @IBAction func blueSliderAction(_ sender: UISlider) {
            let blueValue = Int(sender.value)
            labelBlueOutlet.text = "\(blueValue)"
            changeColor()
        }
        
        
        @IBAction func alphaSliderAction(_ sender: UISlider) {
            let alphaValue = Int(sender.value)
            labelAlphaOutlet.text = "\(alphaValue)"
            changeColor()
        }

    func changeColor(){
        let red = CGFloat(redSliderOutlet.value) / 5.0
        let green = CGFloat(greenSliderOutlet.value) / 5.0
        let blue = CGFloat(blueSliderOutlet.value) / 5.0
        let alpha = CGFloat(alphaSliderOutlet.value) / 5.0
        
        let colorBackground = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        spidermanImageOutlet.backgroundColor = colorBackground
                                    
    }
    

}

