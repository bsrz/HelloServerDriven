import Dependencies
import Foundation

@MainActor
class POIListViewModel: ObservableObject {

    // MARK: - Dependencies

    @Dependency(\.apiClient) private var apiClient
    @Dependency(\.router) var router

    // MARK: - Input

    enum Action {
        case onAppear
    }

    func send(_ action: Action) {
        switch action {
        case .onAppear:
            Task {
                let response = try await apiClient.fetchPointsOfInterests()
                state.title = response.title
                state.pointsOfInterests = response.items
            }
        }
    }

    // MARK: - Output

    struct State {
        var title: String = ""
        var pointsOfInterests: [PointOfInterest] = []
    }

    @Published private(set) var state: State = .init()
}
