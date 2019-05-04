import Foundation

// Enable defining enums that have a string element id
//
//  enum LoginPage: String, CaseIterable, ElementId {
//      case resetPassword
//  }

public protocol ElementId where Self: RawRepresentable, Self.RawValue: StringProtocol {
    var id: String { get }
}

public extension ElementId {
    var id: String {
        return "\(String(describing: Self.self)).\(rawValue)"
    }
}
