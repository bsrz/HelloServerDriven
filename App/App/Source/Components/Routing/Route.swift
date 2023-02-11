enum Route: Decodable, Equatable {
    case details(String)
    case noPayload

    enum CodingKeys: CodingKey {
        case name
        case payload
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        let name = try container.decode(String.self, forKey: .name)
        switch name {
        case "details":
            struct IdValue: Codable { var id: String }
            let value = try container.decode(IdValue.self, forKey: .payload)
            self = .details(value.id)

        case "no_payload":
            self = .noPayload

        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: container.codingPath, debugDescription: "Unexpected value for key: name")
            )
        }
    }
}
