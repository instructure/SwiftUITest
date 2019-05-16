import XCTest
import SwiftUITest

class XCElementType_Tests: SwiftUITestCase {

    func test_ElementType_to_string() {
        XCTAssertEqual(XCElementType.any, "any")
        XCTAssertEqual(XCElementType.other, "other")
    }

    func test_from_string_to_ElementType() {
        XCTAssertEqual(XCElementType.from(XCElementType.any), XCUIElement.ElementType.any)
        XCTAssertEqual(XCElementType.from(XCElementType.other), XCUIElement.ElementType.other)
    }

    func test_from_uint_to_string() {
        XCTAssertEqual(XCElementType.from(0), "any")
        XCTAssertEqual(XCElementType.from(1), "other")
    }

    func test_from_UISegment_to_ElementType() {
        XCTAssertEqual(XCElementType.from("UISegment"), XCUIElement.ElementType.segmentedControl)
    }
}
