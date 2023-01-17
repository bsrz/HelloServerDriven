import SwiftUI

class Router {

    @ViewBuilder
    /// Returns a view for the given route
    /// - Parameter route: The route used to determine which view to return
    /// - Returns: The view for the given route
    func view(for route: Route) -> some View {
        switch route {
        case .bar:
            Text("bar")

        case .foo:
            ZStack {
                Circle()
                    .foregroundColor(.red)

                Text("foo")
                    .foregroundColor(.white)
            }

        case .qux:
            Text("qux")

        case .details:
            Image(systemName: "swift")
        }
    }
}
