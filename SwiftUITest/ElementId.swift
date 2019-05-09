import Foundation
import XCTest

// Enable defining enums that have a string element id
//
//  enum LoginPage: String, CaseIterable, ElementId {
//      case resetPassword
//  }

public protocol ElementId {
    var id: String { get }
}

// Provide default 'id' implementation for enums
public extension ElementId where Self: RawRepresentable, Self.RawValue: StringProtocol {
    var id: String {
        return "\(String(describing: Self.self)).\(rawValue)"
    }
}

public protocol ElementWrapper : Element {
    var element: Element { get }
}

public extension ElementWrapper {
    var exists: Bool {
        return element.exists
    }

    var label: String {
        return element.label
    }

    // renamed to 'accessibilityIdentifier' to avoid conflict with 'id' defined by 'extension ElementId'
    var accessibilityIdentifier: String {
        return element.id
    }

    var elementType: XCUIElement.ElementType {
        return element.elementType
    }

    var isVisible: Bool {
        return element.isVisible
    }

    var isVisibleNow: Bool {
        return element.isVisibleNow
    }

    var value: String {
        return element.value
    }

    var isEnabled: Bool {
        return element.isEnabled
    }

    func tap() {
        element.tap()
    }

    func typeText(_ text: String) {
        element.typeText(text)
    }

    func swipeDown() {
        element.swipeDown()
    }

    func swipeUp() {
        element.swipeUp()
    }

    func child(label: String) -> Element {
        return element.child(label: label)
    }

    func child(elementType: XCUIElement.ElementType, index: Int) -> Element {
        return element.child(elementType: elementType, index: index)
    }

    func waitToExist(_ timeout: Timeout) -> Bool {
        return element.waitToExist(timeout)
    }

    func waitToVanish(_ timeout: Timeout) {
        return element.waitToVanish(timeout)
    }
}
