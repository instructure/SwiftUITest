import Foundation
import XCTest

struct EarlGreyDriver: Driver {
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
        // blocked on: https://github.com/google/EarlGrey/issues/820
        fatalError("not implemented")
    }
    
    func find(id: String) -> Element {
        // blocked on: https://github.com/google/EarlGrey/issues/820
        fatalError("not implemented")
    }

    func find(type: XCUIElement.ElementType) -> Element {
        // blocked on: https://github.com/google/EarlGrey/issues/820
        fatalError("not implemented")
    }
}
