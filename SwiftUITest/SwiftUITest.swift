import Foundation
import XCTest

public protocol Element {
    var isVisible: Bool { get }
    var label: String { get }
    var id: String { get }
    func tap()
}

public protocol Driver {
    func find(label: String) -> Element
    func find(id: String) -> Element
}

public struct DriverFactory {
    public static func getXCUITestDriver(_ app: XCUIApplication) -> Driver {
        return XCUITestDriver(app)
    }
    
    public static func getEarlGreyDriver() -> Driver {
        return EarlGreyDriver()
    }
}
