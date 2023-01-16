import SwiftUI

class Router {

    /// Returns a view for the given route
    /// - Parameter route: The route used to determine which view to return
    /// - Returns: The view for the given route
    func view(for route: Route) -> any View {
        switch route {
        case .bar:
            return Text("bar")

        case .foo:
            return Text("foo")

        case .qux:
            return Text("qux")

        case .details:
            return Text("details")
        }
    }
}
