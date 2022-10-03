//
//  DemoAddTests.swift
//  DemoUnitTestTests
//
//  Created by Camilla Cidral on 03/10/22.
//

import Foundation
@testable import DemoUnitTest
import XCTest

class DemoAddTests: XCTestCase {
    
    var calculator: Calculator!

    override func setUpWithError() throws {
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        calculator = nil
    }
    
    func testAdd () {
        let result = calculator.add(1, 2)
        XCTAssertEqual(result, 3, "Expected 3, but got \(result)")
        XCTAssertLessThan(result, 10)
    }
    
    func testAddAsync() {
        calculator.addAsync(3, 4)
        XCTAssertEqual(calculator?.currentValue, 7)
    }
    
    func testAddSync2() {
        let expect = expectation(description: "completion block was called")
        calculator.addAsync2(3, 4) {
            expect.fulfill()
            XCTAssertEqual(self.calculator?.currentValue, 7)
        }
        wait(for: [expect], timeout: 2.0)
    }
}
