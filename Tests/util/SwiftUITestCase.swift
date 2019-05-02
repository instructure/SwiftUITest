import XCTest
import SwiftUITest

class SwiftUITestCase: XCTestCase {
    
    private static let app = XCUIApplication(bundleIdentifier: "com.google.earlgreyftr.dev")
    var driver: Driver = DriverFactory.getEarlGreyDriver()
    private let app = SwiftUITestCase.app
    private static var firstRun = true

    var backButton: Element = app.firstMatch.toElement(XCTestCase())

    // Reset app state on the very first test.
    private func checkFirstRun() {
        // Go back if there's a back button
        if (backButton.isVisibleNow) {
            backButtonTap()
        }

        // Make sure we're at the top of the list.
        // isVisibleNow isn't reliable on scroll views -- will always return yes
        let a11yViews = driver.find(label: "Accessibility Views", type: .staticText)
        driver.swipeDown()
        a11yViews.waitToExist(Timeout())

        super.setUp()
    }

    override func setUp() {
        continueAfterFailure = false
        app.activate()
        
        driver = DriverFactory.getXCUITestDriver(app, testCase: self)
        backButton = driver.find(label: "EarlGrey TestApp", type: .button)

        checkFirstRun()
        
        super.setUp()
    }

    // utility methods

    func backButtonTap() {
        backButton.tap()
        backButton.waitToVanish(Timeout())
    }
    
}
