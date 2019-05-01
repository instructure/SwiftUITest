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
    var label: String { get }
    var id: String { get }
    func tap()
    func waitToVanish(_ timeout: Timeout)
}

public protocol Driver {
    func find(label: String) -> Element
    func find(id: String) -> Element
}

public struct DriverFactory {
    public static func getXCUITestDriver(_ app: XCUIApplication, testCase: XCTestCase) -> Driver {
        return XCUITestDriver(app, testCase)
    }
    
    public static func getEarlGreyDriver() -> Driver {
        return EarlGreyDriver()
    }
}
