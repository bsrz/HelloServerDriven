@testable import App
import XCTest

final class RouteTests: XCTestCase {

    private let decoder: JSONDecoder = .init()

    func test0() throws {
        let input1 = """
            {
                "name": "int",
                "payload": {
                    "int": 42
                }
            }
        """.data(using: .utf8)!


        let output1 = try decoder.decode(Route.self, from: input1)
        XCTAssertEqual(output1, .int(42))


        let input2 = """
            {
                "name": "string",
                "payload": {
                    "string": "hello, world"
                }
            }
        """.data(using: .utf8)!


        let output2 = try decoder.decode(Route.self, from: input2)
        XCTAssertEqual(output2, .string("hello, world"))

        let input3 = """
            {
                "name": "no_payload"
            }
        """.data(using: .utf8)!


        let output3 = try decoder.decode(Route.self, from: input3)
        XCTAssertEqual(output3, .noPayload)
    }
}
