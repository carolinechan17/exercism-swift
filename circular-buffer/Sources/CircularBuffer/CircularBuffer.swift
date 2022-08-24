//Solution goes in Sources
import Foundation

enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

struct CircularBuffer<T> {
    var buffer: [T] = []
    let capacity: Int
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    mutating func write(_ element: T) throws {
        if buffer.count == capacity {
            throw CircularBufferError.bufferFull
        } else {
            buffer.append(element)
        }
    }
    
    mutating func read() throws -> T {
        if buffer.isEmpty {
            throw CircularBufferError.bufferEmpty
        } else {
            return buffer.removeFirst()
        }
    }
    
    mutating func clear() {
        buffer.removeAll()
    }
    
    mutating func overwrite(_ element: T) {
        if buffer.count == capacity {
            buffer.removeFirst()
        }
        
        buffer.append(element)
    }
}
