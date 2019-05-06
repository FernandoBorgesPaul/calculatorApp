//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Fernando Borges Paul on 02/05/19.
//  
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?  // Tuple to deal with the first part of the
                                                                        //calculation first number and symbol +- / *
    
    mutating func setNUmber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol : String)-> Double? {   // It has to be optional to return nil
        
        if let n = number {
            
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100
            case "=":
                return performTwoNumCalculation(n2: n)
            default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil      // Related to the return Double which is optional
    }
    
    
     func performTwoNumCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1,
            let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "×":
                return n1 * n2
            case "÷":
                return n1 / n2
                
            default:
                fatalError("Invalid operation")
            }
        }
        return nil
    }

}
