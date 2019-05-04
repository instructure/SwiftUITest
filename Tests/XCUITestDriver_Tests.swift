import XCTest

class XCUITestDriver_Tests: SwiftUITestCase {

    func test_swipeDown() {
        driver.swipeDown()
    }

    func test_swipeUp() {
        driver.swipeUp()
    }

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

    func test_find_elementId() {
         XCTAssertFalse(driver.find(ElementId_Tests.LoginPage.resetPassword).isVisibleNow)
    }

    func test_find_type() {
        let ele = driver.find(type: .table)
        XCTAssertTrue(ele.elementType == .table)
    }

    func test_find_label_type() {
        let label = "Accessibility Views"
        let ele = driver.find(label: label, type: .staticText)
        XCTAssertTrue(ele.label == label)
        XCTAssertTrue(ele.elementType == .staticText)
    }

    func test_find_id_type() {
        driver.find(label: "Multi finger swipe gestures").tap()

        let id = "gestureRegonizedLabel"
        let ele = driver.find(id: id, type: .staticText)
        XCTAssertTrue(ele.id == id)
        XCTAssertTrue(ele.elementType == .staticText)

        backButtonTap()
    }

    func test_find_elementId_type() {
        XCTAssertFalse(driver.find(ElementId_Tests.LoginPage.resetPassword, type: .any).isVisibleNow)
    }
}
