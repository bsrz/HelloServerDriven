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

    func fetchOffices() async throws -> OfficeList {
        guard let url = URL(string: "poi", relativeTo: baseUrl) else { throw Error.invalidUrl }

        let (data, response) = try await session.data(from: url)

        guard let response = response as? HTTPURLResponse else { throw Error.unexpectedResponse }
        guard (200..<300).contains(response.statusCode) else { throw Error.unexpectedStatusCode }

        do {
            return try JSONDecoder().decode(OfficeList.self, from: data)
        } catch {
            print("\(#function) error: \(error)")
            throw Error.decodingError
        }
    }
}
