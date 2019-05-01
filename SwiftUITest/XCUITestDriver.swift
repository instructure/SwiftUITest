import Foundation
import XCTest

private struct XCUIElementWrapper: Element {
    let element: XCUIElement
    
    init(_ xcuiElement: XCUIElement) {
        element = xcuiElement
    }

    var label: String {
        return element.label
    }
    
    var id: String {
        return element.identifier
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
    private func waitToExist(_ timeout: TimeInterval = 10) -> Bool {
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
    let app: XCUIApplication
    
    init(_ app: XCUIApplication) {
        self.app = app
    }
    
    func find(label: String) -> Element {
       return app
            .descendants(matching: .any)
            .matching(NSPredicate(format: "%K == %@", #keyPath(XCUIElement.label), label))
            .firstMatch
            .toElement()
    }
    
    func find(id: String) -> Element {
        return app
            .descendants(matching: .any)
            .matching(NSPredicate(format: "%K == %@", #keyPath(XCUIElement.identifier), id))
            .firstMatch
            .toElement()
    }
}
