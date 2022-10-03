//
//  DemoMultTests.swift
//  DemoUnitTestTests
//
//  Created by Camilla Cidral on 03/10/22.
//

import Foundation
@testable import DemoUnitTest
import XCTest

class DemoMultTests: XCTestCase {
    
    var calculator: Calculator!

    override func setUpWithError() throws {
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        calculator = nil
    }

    func testMultiple () {
        let result = calculator.multiple(4, 4)
        XCTAssertEqual(result, 16, "Expected 16, but got \(result)")
    }

}

