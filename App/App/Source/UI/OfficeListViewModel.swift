import Dependencies
import Foundation
import SwiftUI

@MainActor
class OfficeListViewModel: ObservableObject {

    // MARK: - Dependencies

    @Dependency(\.apiClient) private var apiClient

    // MARK: - Input

    enum Action {
        case onAppear
        case tap(Binding<Bool>)
    }

    func send(_ action: Action) {
        switch action {
        case .onAppear:
            Task {
                let officeList = try await apiClient.fetchOffices()
                state.title = officeList.description
                state.offices = officeList.offices
            }

        case .tap(let isActive):
            state.isLoading = true
            Task {
                try await Task.sleep(nanoseconds: 1_000_000_000)
                state.isLoading = false
                isActive.wrappedValue = true
            }
        }
    }

    // MARK: - Output

    struct State {
        var title: String = ""
        var offices: [Office] = []
        var isLoading: Bool = false
    }

    @Published private(set) var state: State = .init()
}
