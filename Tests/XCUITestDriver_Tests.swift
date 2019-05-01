import XCTest
import SwiftUITest

class XCUITestDriver_Tests: SwiftUITestCase {

    private func backButtonTap() {
        let backButton = driver.find(label: "EarlGrey TestApp")
        backButton.tap()
    }
    
    // XCUITestDriver
    
    func test_find_label() {
        let label = "Accessibility Views"
        let ele = driver.find(label: label)
        XCTAssertTrue(ele.label == label)
    }
    
    func test_find_id() {
        driver.find(label: "Multi finger swipe gestures").tap()
        
        let id = "gestureRegonizedLabel"
        let ele = driver.find(id: id)
        XCTAssertTrue(ele.id == id)
        
        backButtonTap()
    }
    
    // XCUIElementWrapper
    
    func test_label() {
        let label = "Accessibility Views"
        let ele = driver.find(label: label)
        XCTAssertTrue(ele.label == label)
    }
    
    func test_isVisible() {
        let label = "Accessibility Views"
        let ele = driver.find(label: label)
        XCTAssertTrue(ele.isVisible)
    }
    
    func test_tap() {
        let a11yButton = driver.find(label: "Accessibility Views")
        XCTAssertTrue(a11yButton.isVisible)
        a11yButton.tap()

        backButtonTap()
        
        XCTAssertTrue(a11yButton.isVisible)
    }
    
    func test_vanish() {
        let a11yButton = driver.find(label: "Accessibility Views")
        a11yButton.tap()
        a11yButton.waitToVanish(Timeout())
        
        backButtonTap()
        XCTAssertTrue(a11yButton.isVisible)
    }
}
