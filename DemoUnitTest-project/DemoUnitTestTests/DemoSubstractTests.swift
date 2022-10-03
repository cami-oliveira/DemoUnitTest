//
//  DemoSubstractTests.swift
//  DemoUnitTestTests
//
//  Created by Camilla Cidral on 03/10/22.
//

import Foundation
@testable import DemoUnitTest
import XCTest

class DemoSubstractTests: XCTestCase {
    
    var calculator: Calculator!

    override func setUpWithError() throws {
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        calculator = nil
    }

    func testSubtract () {
        let result = calculator.subtract(10, 7)
        XCTAssertEqual(result, 3, "Expected 3, but got \(result)")
    }
}
