import Foundation

class APIClient {

    enum Error: Swift.Error {
        case decodingError
        case invalidUrl
        case unexpectedResponse
        case unexpectedStatusCode
    }

    private let session: URLSession = .shared
    private let baseUrl: URL = .init(string: "http://localhost:3000/")!

    func fetchPointsOfInterests() async throws -> PointsOfInterestResponse {
        guard let url = URL(string: "pointsOfInterest", relativeTo: baseUrl) else { throw Error.invalidUrl }

        let (data, response) = try await session.data(from: url)

        guard let response = response as? HTTPURLResponse else { throw Error.unexpectedResponse }
        guard (200..<300).contains(response.statusCode) else { throw Error.unexpectedStatusCode }

        do {
            return try JSONDecoder().decode(PointsOfInterestResponse.self, from: data)
        } catch {
            throw Error.decodingError
        }
    }
}
