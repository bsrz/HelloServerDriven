import Dependencies

private enum RouterDependencyKey: DependencyKey {
    static let liveValue: Router = .init()
}

extension DependencyValues {
    var router: Router {
        get { self[RouterDependencyKey.self] }
        set { self[RouterDependencyKey.self] = newValue }
    }
}

