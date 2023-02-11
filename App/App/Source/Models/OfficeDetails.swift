import Foundation

struct OfficeDetails {
    var id: String
    var name: String
    var description: String
    var imageUrl: URL
    var location: Location
    var gallery: Gallery
}

extension OfficeDetails: Decodable {
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case imageUrl = "image_url"
        case location
        case gallery
    }
}

struct Gallery: Decodable {
    var section1: [URL]
    var section2: [URL]
    var section3: [URL]
}
