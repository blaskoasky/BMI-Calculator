//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Irianto Mauduta Perkasa on 07/12/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "EAT MORE U CUCK", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "u good", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "EAT LESS U FATcuck", color: .red)
        }
        
    }
    
    func getBMIValue() -> String {
        let formattedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return formattedBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
