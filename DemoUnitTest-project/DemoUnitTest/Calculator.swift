//
//  Calculator.swift
//  DemoUnitTest
//
//  Created by Camilla Cidral on 03/10/22.
//

import Foundation

class Calculator {
    
    var currentValue: Int?
    
    init () {}
    
    func add (_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    func addAsync (_ a: Int, _ b: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.currentValue = a + b
        })
    }
    
    func addAsync2 (_ a: Int, _ b: Int, completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            self.currentValue = a + b
            completion()
        })
    }
    func subtract (_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    func multiple (_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    func divide (_ a: Double, _ b: Double) -> Double {
        return a / b
    }
}
