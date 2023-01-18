import Foundation

struct PointOfInterest: Identifiable {
    var id: String { title }
    var title: String
    var description: String
    var imageUrl: URL
    var action: NavigationAction
}

// MARK: - Codable

extension PointOfInterest: Decodable {
    enum CodingKeys: String, CodingKey {
        case title
        case description
        case imageUrl = "hero_image_url"
        case action
    }
}
