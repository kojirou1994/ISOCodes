extension Sequence where Element == UInt8 {
  @usableFromInline
  func joined<T>(_ type: T.Type) -> T where T: FixedWidthInteger {
    let byteCount = T.bitWidth / 8
    var result = T.init()
    for element in enumerated() {
      if element.offset == byteCount {
        break
      }
      result = (result << 8) | T(truncatingIfNeeded: element.element)
    }
    return result
  }
}
