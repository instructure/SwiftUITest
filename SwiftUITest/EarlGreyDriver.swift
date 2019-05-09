import Foundation
import XCTest

// blocked on: https://github.com/google/EarlGrey/issues/820
struct EarlGreyDriver: Driver {

    func find<T>(_ elementId: T, type: XCUIElement.ElementType) -> Element where T : ElementWrapper {
        fatalError("not implemented")
    }

    func find<T: ElementWrapper>(_ elementId: T) -> Element {
        fatalError("not implemented")
    }

    func find(id: String, type: XCUIElement.ElementType) -> Element {
        fatalError("not implemented")
    }

    func find(label: String, type: XCUIElement.ElementType) -> Element {
        fatalError("not implemented")
    }

    func swipeDown() {
        fatalError("not implemented")
    }

    func swipeUp() {
        fatalError("not implemented")
    }

    func find(label: String) -> Element {
        fatalError("not implemented")
    }
    
    func find(id: String) -> Element {
        fatalError("not implemented")
    }

    func find(type: XCUIElement.ElementType) -> Element {
        fatalError("not implemented")
    }

    func find(parentID: String, label: String) -> Element {
        fatalError("not implemented")
    }

    func find(parentID: String, type: XCUIElement.ElementType, index: Int) -> Element {
        fatalError("not implemented")
    }
}
