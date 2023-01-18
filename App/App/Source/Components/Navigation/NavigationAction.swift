import SwiftUI

struct NavigationAction {
    var displayMethod: DisplayMethod
    var route: Route
}

extension NavigationAction: Decodable {
    enum CodingKeys: String, CodingKey {
        case displayMethod = "display_method"
        case route
    }
}

