//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrainObj = CalculatorBrain()

    @IBOutlet weak var sliderBar1: UISlider!
    @IBOutlet weak var sliderBar2: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    var BMI : Float = 0.0
    var labelValue : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider)
    {
        
        
        let sliderValue1 = String(format: "%.2f", sender.value)
        heightLabel.text = "\(sliderValue1)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider)
    {
        let sliderValue2 = String(format: "%.0f", sender.value)
        weightLabel.text = "\(sliderValue2)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton)
    {
        
        let height = sliderBar1.value
        let weight = sliderBar2.value
        
        //BMI = weight / pow(height, 2)
        
        calculatorBrainObj.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultsViewController
            
//           labelValue = String(format: "%.0f", BMI)
            
            destinationVC.bmiValue = calculatorBrainObj.getBMIValue()
            destinationVC.adviceString = calculatorBrainObj.getAdviceString()
            destinationVC.color = calculatorBrainObj.getColor()
        }
    }
    
    func stringToFloat(value : String) -> Float {
        
        let numberFormatter = NumberFormatter()
        let number = numberFormatter.number(from: value)
        let numberFloatValue = number?.floatValue
        return numberFloatValue!
    }
    
}

