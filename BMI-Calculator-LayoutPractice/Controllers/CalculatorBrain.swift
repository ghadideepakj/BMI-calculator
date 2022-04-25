//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Veekay Infotech on 17/02/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var BMIValue : Float = 0.0
    var adviceString = ""
    
    var bmi : BMI?
    
    mutating func calculateBMI(height:Float, weight: Float) {
        
        
        BMIValue = weight / pow(height, 2)
        
        if BMIValue < 18.5 {
            bmi = BMI(value: BMIValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if BMIValue < 24.9
        {
            bmi = BMI(value: BMIValue, advice: "You are fit as fidddle", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }
        else{
            bmi = BMI(value: BMIValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }

    }
    
    func getBMIValue() -> String {
        
        let labelValue = String(format: "%.1f", BMIValue)

        return labelValue
    }
    
    func getAdviceString() -> String {
        
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

    
}
