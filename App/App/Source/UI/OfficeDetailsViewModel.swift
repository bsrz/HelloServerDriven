import Foundation

@MainActor
class OfficeDetailsViewModel: ObservableObject {

    init(details: OfficeDetails) {
        self.state = .init(details: details)
    }

    // MARK: - Input

    enum Action { }

    func send(_ action: Action) {
        switch action {
            
        }
    }

    // MARK: - Output

    struct State {
        var details: OfficeDetails
    }

    @Published private(set) var state: State
}
