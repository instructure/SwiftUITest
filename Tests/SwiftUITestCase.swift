import XCTest
import SwiftUITest

class SwiftUITestCase: XCTestCase {
    
    private static let app = XCUIApplication(bundleIdentifier: "com.google.earlgreyftr.dev")
    private static let driver = DriverFactory.getXCUITestDriver(app)
    let driver = SwiftUITestCase.driver
    private let app = SwiftUITestCase.app
    
    override func setUp() {
        continueAfterFailure = false
        app.activate()
        
        super.setUp()
    }
}
