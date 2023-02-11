@testable import App
import XCTest

final class RouteTests: XCTestCase {

    private let decoder: JSONDecoder = .init()

    func test0() throws {
        let input1 = """
            {
                "name": "details",
                "payload": {
                    "id": "42"
                }
            }
        """.data(using: .utf8)!


        let output1 = try decoder.decode(Route.self, from: input1)
        XCTAssertEqual(output1, .details("42"))

        let input2 = """
            {
                "name": "no_payload"
            }
        """.data(using: .utf8)!


        let output2 = try decoder.decode(Route.self, from: input2)
        XCTAssertEqual(output2, .noPayload)
    }
}
