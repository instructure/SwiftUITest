import XCTest
import EGSwift

class EGSwiftUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication(bundleIdentifier: "com.google.earlgreyftr.dev").launch()
   }

    func testExample() {
       TestHelpers.tapKeyWindow()
       TestHelpers.printMessage()
       ok()
    }
}
