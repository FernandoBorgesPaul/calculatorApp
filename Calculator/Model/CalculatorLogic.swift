//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Fernando Borges Paul on 02/05/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func calculate(symbol : String)-> Double? {   // It has to be optional to return nil
        
        if symbol == "+/-" {
            return number * -1
        }
        else if symbol == "%" {
            return number / 100
        }
        else if symbol == "AC" {
            return 0
        }
        
        return nil      // Related to the return Double which is optional
    }
}
