import Foundation

// Enable defining enums that have a string element id
//
//  enum LoginPage: String, CaseIterable, ElementId {
//      case resetPassword
//  }

public protocol ElementId {}

extension ElementId where Self: RawRepresentable, Self.RawValue: StringProtocol {
    public var id: String {
        return "\(String(describing: Self.self)).\(rawValue)"
    }
}
