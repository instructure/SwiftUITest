import XCTest
import SwiftUITest

class XCUIElementWrapper_Tests: SwiftUITestCase {

    func test_exists() {
        let label = "Accessibility Views"
        let ele = app.find(label: label)
        XCTAssertTrue(ele.exists == true)
    }

    func test_label() {
        let label = "Accessibility Views"
        let ele = app.find(label: label)
        XCTAssertTrue(ele.label == label)
    }

    func test_id() {
        app.find(label: "Multi finger swipe gestures").tap()

        let id = "gestureRegonizedLabel"
        let ele = app.find(id: id)
        XCTAssertTrue(ele.id == id)
    }

    func test_elementType() {
        let label = "Accessibility Views"
        let ele = app.find(label: label)
        XCTAssertTrue(ele.elementType == .staticText)
    }

    func test_isVisible() {
        let label = "Accessibility Views"
        let ele = app.find(label: label)
        XCTAssertTrue(ele.isVisible)
    }

    func test_isVisibleNow() {
        let label = "Accessibility Views"
        var ele = app.find(label: label)
        XCTAssertTrue(ele.isVisibleNow)

        ele = app.find(label: "does not exist")
        XCTAssertFalse(ele.isVisibleNow)
    }

    func test_value() {
        let label = "Accessibility Views"
        let ele = app.find(label: label)
        XCTAssertTrue(ele.value == "")
    }

    func test_isEnabled() {
        let label = "Accessibility Views"
        let ele = app.find(label: label)
        XCTAssertTrue(ele.isEnabled)
    }

    func test_tap() {
        let a11yButton = app.find(label: "Accessibility Views")
        XCTAssertTrue(a11yButton.isVisible)
        a11yButton.tap()

        backButtonTap()

        XCTAssertTrue(a11yButton.isVisible)
    }

    func test_typeText() {
        app.find(type: .table).swipeUp()
        app.find(label: "Typing Views").tap()

        let textfield = app.find(id: "TypingTextField")
        let text = "hello there"
        textfield.tap()
        textfield.typeText(text)
        XCTAssertTrue(textfield.value == text)

        // scroll back to top
        backButtonTap()
        app.find(type: .table).swipeDown()
        app.find(type: .table).swipeDown()
    }

    func test_swipeDown() {
        app.find(type: .table).swipeDown()
    }

    func test_swipeUp() {
        app.find(type: .table).swipeUp()
    }

    func test_waitToExist() {
        let a11yButton = app.find(label: "Accessibility Views")
        a11yButton.waitToExist(Timeout())
        XCTAssertTrue(a11yButton.isVisible)
    }

    func test_waitToVanish() {
        let a11yButton = app.find(label: "Accessibility Views")
        a11yButton.tap()
        a11yButton.waitToVanish(Timeout())

        backButtonTap()
        XCTAssertTrue(a11yButton.isVisible)
    }
}
