import Foundation

import XCTest
import SwiftUITest

class ElementId_Tests: SwiftUITestCase {

    public enum LoginPage: String, CaseIterable, ElementId {
        case resetPassword
    }

    func test_elementId() {
        XCTAssertTrue(LoginPage.resetPassword.rawValue == "resetPassword")
        XCTAssertTrue(LoginPage.resetPassword.id == "LoginPage.resetPassword")

        // we can find directly with the enum
        XCTAssertFalse(driver.find(LoginPage.resetPassword).isVisibleNow)
    }
}
