//
//  DemoDivideTests.swift
//  DemoUnitTestTests
//
//  Created by Camilla Cidral on 03/10/22.
//

import Foundation
@testable import DemoUnitTest
import XCTest

class DemoDivideTests: XCTestCase {
    
    var calculator: Calculator!

    override func setUpWithError() throws {
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        calculator = nil
    }

    func testDivide () {
        let result = calculator.divide(4, 2)
        XCTAssertEqual(result, 2, "Expected 2, but got \(result)")
    }

}


