import Foundation
import XCTest

private struct XCUIElementWrapper: Element {
    let element: XCUIElement
    let testCase: XCTestCase
    
    init(_ element: XCUIElement, _ testCase: XCTestCase) {
        self.element = element
        self.testCase = testCase
    }

    var label: String {
        return element.label
    }
    
    var id: String {
        return element.identifier
    }

    var isVisible: Bool {
        waitToExist(Timeout())
        return element.isHittable
    }
    
    func tap() {
        waitToExist(Timeout())
        element.tap()
    }
    
    @discardableResult
    private func waitToExist(_ timeout: Timeout) -> Bool {
        // TODO: Wait for no more network activity, etc.
        return element.waitForExistence(timeout: timeout.value)
    }
    
    func waitToVanish(_ timeout: Timeout) {
        let vanish = NSPredicate(format: "exists == false")
        
        testCase.expectation(for: vanish, evaluatedWith: element, handler: nil)
        testCase.waitForExpectations(timeout: timeout.value, handler: nil)
    }
}

extension XCUIElement {
    func toElement(_ testCase: XCTestCase) -> Element {
        return XCUIElementWrapper(self, testCase)
    }
}

struct XCUITestDriver: Driver {
    let app: XCUIApplication
    let testCase: XCTestCase
    
    init(_ app: XCUIApplication, _ testCase: XCTestCase) {
        self.app = app
        self.testCase = testCase
    }
    
    func find(label: String) -> Element {
       return app
            .descendants(matching: .any)
            .matching(NSPredicate(format: "%K == %@", #keyPath(XCUIElement.label), label))
            .firstMatch
            .toElement(testCase)
    }
    
    func find(id: String) -> Element {
        return app
            .descendants(matching: .any)
            .matching(NSPredicate(format: "%K == %@", #keyPath(XCUIElement.identifier), id))
            .firstMatch
            .toElement(testCase)
    }
}
