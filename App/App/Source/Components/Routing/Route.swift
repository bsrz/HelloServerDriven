enum Route: Decodable, Equatable {
    case int(Int)
    case string(String)
    case noPayload

    enum CodingKeys: CodingKey {
        case name
        case payload
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        let name = try container.decode(String.self, forKey: .name)
        switch name {
        case "int":
            struct IntValue: Codable { var int: Int }
            let value = try container.decode(IntValue.self, forKey: .payload)
            self = .int(value.int)

        case "string":
            struct StringValue: Codable { var string: String }
            let value = try container.decode(StringValue.self, forKey: .payload)
            self = .string(value.string)

        case "no_payload":
            self = .noPayload

        default:
            throw DecodingError.dataCorrupted(
                .init(codingPath: container.codingPath, debugDescription: "Unexpected value for key: name")
            )
        }
    }
}
