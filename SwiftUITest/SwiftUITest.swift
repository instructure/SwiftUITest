import Foundation
import XCTest

public struct Timeout {
    var value: TimeInterval

    public init(value: TimeInterval = 10) {
        self.value = value
    }
}

public protocol Element {
    var isVisible: Bool { get }
    var isVisibleNow: Bool { get }
    var value: String { get }
    var isEnabled: Bool { get }
    var label: String { get }
    var id: String { get }
    var elementType: XCUIElement.ElementType { get }
    func tap()
    @discardableResult
    func waitToExist(_ timeout: Timeout) -> Bool
    func waitToVanish(_ timeout: Timeout)
    func typeText(_ text: String)
    func swipeDown()
    func swipeUp()
    func child(label: String) -> Element
    func child(elementType: XCUIElement.ElementType, index: Int) -> Element
}

public protocol Driver {
    func find(label: String) -> Element
    func find(id: String) -> Element
    func find(type: XCUIElement.ElementType) -> Element
    func find(label: String, type: XCUIElement.ElementType) -> Element
    func find(id: String, type: XCUIElement.ElementType) -> Element

    func swipeDown()
    func swipeUp()
}

public struct DriverFactory {
    public static func getXCUITestDriver(_ app: XCUIApplication, testCase: XCTestCase) -> Driver {
        return XCUITestDriver(app, testCase)
    }
    
    public static func getEarlGreyDriver() -> Driver {
        return EarlGreyDriver()
    }
}
