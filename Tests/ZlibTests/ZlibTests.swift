import XCTest
@testable import Zlib

final class ZlibTests: XCTestCase {
    func testDecompressed() throws {
        let compressed = "eNrzSM3JyVcozy/KSVEEAB0JBF4="
        let data = Data(base64Encoded: compressed)
        XCTAssertNotNil(data)
        XCTAssertEqual(
            data?.decompressed.string,
            "Hello world!"
        )
    }
}
