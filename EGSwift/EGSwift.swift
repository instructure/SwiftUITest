import Foundation
import EarlGrey

public struct TestHelpers {
    public static func printMessage() {
        print("hi")
    }
    
    public static func tapKeyWindow() {
        EarlGrey.selectElement(with: grey_keyWindow())
            .perform(grey_tap())
    }
}

public func ok() {
    print("hi")
}
