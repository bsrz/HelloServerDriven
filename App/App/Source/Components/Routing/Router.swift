import SwiftUI

class Router {

    @ViewBuilder
    /// Returns a view for the given route
    /// - Parameter route: The route used to determine which view to return
    /// - Returns: The view for the given route
    func view(for route: Route) -> some View {
        switch route {
        case .string(let string):
            Text("string: \(string)")

        case .int(let int):
            Text("int: \(int)")

        case .noPayload:
            Text("no payload")
        }
    }
}
