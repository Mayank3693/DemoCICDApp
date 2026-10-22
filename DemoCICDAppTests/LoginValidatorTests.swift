//
//  LoginValidatorTests.swift
//  DemoCICDAppTests
//
//  Created by Saurabh Mishra on 22/10/26.
//

import XCTest
@testable import DemoCICDApp

final class LoginValidatorTests: XCTestCase {
    let validator = LoginValidator()
    
    func testValidLogin() {
        XCTAssertTrue(
            validator.isValid(
                email: "test@gmail.com",
                password: "12345678"
            )
        )
    }
    
    func testInvalidEmail() {
        XCTAssertFalse(
        validator.isValid(email: "InvalidEmail", password: "12345678")
        )
    }
    
    func testInvalidPassword() {
        XCTAssertFalse(
        validator.isValid(email: "test@gmail.com", password: "1234")
        )
    }
}
