import Foundation

import XCTest
import SwiftUITest

class ElementId_Tests: SwiftUITestCase {

    enum LoginPage: String, CaseIterable, ElementId {
        case resetPassword
    }

    func test_elementId() {
        XCTAssertTrue(LoginPage.resetPassword.rawValue == "resetPassword")
        XCTAssertTrue(LoginPage.resetPassword.id == "LoginPage.resetPassword")
    }
}
