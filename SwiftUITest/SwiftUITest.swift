import Foundation

protocol Element {
    var isVisible: Bool { get }
    func tap()
}

protocol Driver {
    func find(label: String) -> Element
}
