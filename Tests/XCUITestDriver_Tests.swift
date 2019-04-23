import XCTest

class XCUITestDriver_Tests: SwiftUITestCase {

    // XCUITestDriver
    
    func test_find() {
        let label = "Accessibility Views"
        let ele = driver.find(label: label)
        XCTAssertTrue(ele.label == label)
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

        let backButton = driver.find(label: "EarlGrey TestApp")
        backButton.tap()
        
        XCTAssertTrue(a11yButton.isVisible)
    }
}
