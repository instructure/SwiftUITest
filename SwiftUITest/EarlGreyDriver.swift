import Foundation

struct EarlGreyDriver: Driver {
    
    func find(label: String) -> Element {
        // blocked on: https://github.com/google/EarlGrey/issues/820
        fatalError("not implemented")
    }
    
    func find(id: String) -> Element {
        // blocked on: https://github.com/google/EarlGrey/issues/820
        fatalError("not implemented")
    }
}
