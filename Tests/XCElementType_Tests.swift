import XCTest
import SwiftUITest

class XCElementType_Tests: SwiftUITestCase {

    func test_ElementType_to_string() {
        XCTAssertTrue(XCElementType.any == "any")
        XCTAssertTrue(XCElementType.other == "other")
    }

    func test_string_to_ElementType() {
        XCTAssertTrue(XCElementType.from(XCElementType.any) == XCUIElement.ElementType.any)
        XCTAssertTrue(XCElementType.from(XCElementType.other) == XCUIElement.ElementType.other)
    }
}
