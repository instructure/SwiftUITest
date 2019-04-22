import Foundation
import XCTest

private struct XCUIElementWrapper: Element {
    let element: XCUIElement
    
    init(_ xcuiElement: XCUIElement) {
        element = xcuiElement
    }
    
    var isVisible: Bool {
        waitToExist()
        return element.isHittable
    }
    
    func tap() {
        waitToExist()
        element.tap()
    }
    
    @discardableResult
    func waitToExist(_ timeout: TimeInterval = 10) -> Bool {
        // TODO: Wait for no more network activity, etc.
        return element.waitForExistence(timeout: timeout)
    }
}

extension XCUIElement {
    func toElement() -> Element {
        return XCUIElementWrapper(self)
    }
}

struct XCUITestDriver: Driver {
    
    func find(label: String) -> Element {
       return XCUIApplication()
            .descendants(matching: .any)
            .matching(NSPredicate(format: "%K == %@", #keyPath(XCUIElement.label), label))
            .firstMatch
            .toElement()
    }
}
