import XCTest
import SwiftUITest

class SwiftUITestCase: XCTestCase {
    
    private static let app = XCUIApplication(bundleIdentifier: "com.google.earlgreyftr.dev")
    var driver: Driver = DriverFactory.getEarlGreyDriver()
    private let app = SwiftUITestCase.app
    
    override func setUp() {
        continueAfterFailure = false
        app.activate()
        
        driver = DriverFactory.getXCUITestDriver(app, testCase: self)
        
        super.setUp()
    }
}
