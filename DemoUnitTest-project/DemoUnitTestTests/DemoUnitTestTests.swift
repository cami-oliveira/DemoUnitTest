//
//  DemoUnitTestTests.swift
//  DemoUnitTestTests
//
//  Created by Camilla Cidral on 03/10/22.
//

import XCTest
@testable import DemoUnitTest

class DemoUnitTest: XCTestCase {
    
    var calculator: Calculator!
    
    override func setUpWithError() throws {
        calculator = Calculator()
    }
    
    override func tearDownWithError() throws {
        calculator = nil
    }
}

