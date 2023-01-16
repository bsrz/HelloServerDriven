import SwiftUI

struct NavigationAction {
    var displayMethod: DisplayMethod
    var route: Router.Route
}

extension NavigationAction: Codable {
    enum CodingKeys: String, CodingKey {
        case displayMethod = "display_method"
        case route
    }
}

