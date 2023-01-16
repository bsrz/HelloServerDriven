import Dependencies

private enum APIClientDependencyKey: DependencyKey {
    static let liveValue: APIClient = .init()
}

extension DependencyValues {
    var apiClient: APIClient {
        get { self[APIClientDependencyKey.self] }
        set { self[APIClientDependencyKey.self] = newValue }
    }
}

