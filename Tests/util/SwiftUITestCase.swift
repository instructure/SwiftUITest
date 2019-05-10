import XCTest
import SwiftUITest

private var getApp = { return DriverFactory.getEarlGreyDriver() }
var app: Driver { return getApp() }

extension ElementWrapper {
    var element: Element {
        return app.find(id: id)
    }
}

class SwiftUITestCase: XCTestCase {
    
    private static let xcuiApp = XCUIApplication(bundleIdentifier: "com.google.earlgreyftr.dev")
    let xcuiApp = SwiftUITestCase.xcuiApp
    var backButton: Element = xcuiApp.firstMatch.toElement(XCTestCase())

    // Always recompute app to avoid stale testCase references


    private func resetApp() {
        // Go back if there's a back button
        if (backButton.isVisibleNow) {
            backButtonTap()
        }

        // Make sure we're at the top of the list.
        // isVisibleNow isn't reliable on scroll views -- will always return yes
        let a11yViews = app.find(label: "Accessibility Views", type: XCElementType.staticText)
        app.swipeDown()
        a11yViews.waitToExist(Timeout())

        super.setUp()
    }

    override func setUp() {
        continueAfterFailure = false
        xcuiApp.activate()

        getApp = { return DriverFactory.getXCUITestDriver(self.xcuiApp, testCase: self) }
        backButton = app.find(label: "EarlGrey TestApp", type: XCElementType.button)

        resetApp()
        
        super.setUp()
    }

    // utility methods

    func backButtonTap() {
        backButton.tap()
        backButton.waitToVanish(Timeout())
    }
    
}
