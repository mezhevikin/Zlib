// Mezhevikin Alexey: https://github.com/mezhevikin/Zlib
import Foundation
import Compression

public extension Data {
    var decompressed: Data {
        let size = 8_000_000
        let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: size)
        let result = subdata(in: 2 ..< count).withUnsafeBytes({
            let read = compression_decode_buffer(
                buffer,
                size,
                $0.baseAddress!.bindMemory(
                    to: UInt8.self,
                    capacity: 1
                ),
                count - 2,
                nil,
                COMPRESSION_ZLIB
            )
            return Data(bytes: buffer, count:read)
        })
        buffer.deallocate()
        return result
    }
    
    var decompressedString: String? {
        String(data: decompressed, encoding: .utf8)
    }
}
