import Foundation

struct Office: Decodable, Identifiable {
    var id: String
    var name: String
    var location: Location
    var imageUrl: URL
    var action: NavigationAction

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case location
        case imageUrl = "image_url"
        case action
    }
}
