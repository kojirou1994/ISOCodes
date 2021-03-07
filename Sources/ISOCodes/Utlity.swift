extension UInt8 {
  var lowercased: Self {
    if (UInt8(ascii: "A")...UInt8(ascii: "Z")).contains(self) {
      return self + 32
    } else {
      return self
    }
  }
}

extension String {

  var twoCharToUInt16: UInt16? {
    withCheckingUTF8(count: 2) { buffer in
      (UInt16(truncatingIfNeeded: buffer[0].lowercased) << UInt8.bitWidth)
        | (UInt16(truncatingIfNeeded: buffer[1].lowercased) << 0)
    }
  }

  var threeCharToUInt32: UInt32? {
    withCheckingUTF8(count: 3) { buffer in
      (UInt32(truncatingIfNeeded: buffer[0].lowercased) << UInt16.bitWidth)
        | (UInt32(truncatingIfNeeded: buffer[1].lowercased) << UInt8.bitWidth)
        | (UInt32(truncatingIfNeeded: buffer[2].lowercased) << 0)
    }
  }

  private func withCheckingUTF8<R>(count: Int, _ body: (UnsafeBufferPointer<UInt8>) -> R) -> R? {
    var copy = self
    return copy.withUTF8 { buffer in
      guard buffer.count == count else {
        return nil
      }
      return body(buffer)
    }
  }

  var twoOrThreeCharToUInt32: UInt32? {
    var copy = self
    return copy.withUTF8 { buffer in
      switch buffer.count {
      case 2:
        return (UInt32(truncatingIfNeeded: buffer[0].lowercased) << UInt8.bitWidth)
          | (UInt32(truncatingIfNeeded: buffer[1].lowercased) << 0)
      case 3:
        return (UInt32(truncatingIfNeeded: buffer[0].lowercased) << UInt16.bitWidth)
          | (UInt32(truncatingIfNeeded: buffer[1].lowercased) << UInt8.bitWidth)
          | (UInt32(truncatingIfNeeded: buffer[2].lowercased) << 0)
      default:
        return nil
      }
    }
  }

}
