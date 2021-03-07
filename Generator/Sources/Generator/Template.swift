/// ISO 3166
import KwiftUtility

protocol CodeGenerateData {
  var caseString: String {get}
}

public enum Country: UInt16, Identifiable, CaseIterable, Codable {
  case chi = 010
  case jpn = 110

  public init?(alpha2Code: String) {
    guard alpha2Code.utf8.count == 2 else {
      return nil
    }
    switch alpha2Code.lowercased().utf8.joined(UInt16.self) {
    case 0x1111: self = .chi
    default: return nil
    }
  }

  public init?(alpha3Code: String) {
    guard alpha3Code.utf8.count == 3 else {
      return nil
    }
    switch alpha3Code.lowercased().utf8.joined(UInt32.self) {
    //        case "chi": self = .chi
    default: return nil
    }
  }

  public var id: Self {self}

  public var name: String {
    ""
  }

  public var alpha2Code: String {
    "AA"
  }

  public var alpha3Code: String {
    "AAA"
  }

  public var numericCode: UInt16 {
    rawValue
  }
}

public extension Country {
  var currency: Currency? {
    .cny
  }
}

/// ISO 4217
public enum Currency: UInt16, Identifiable, CaseIterable, Codable {
  case cny = 156

  public var id: Self {self}

  public var numericCode: UInt16 {
    rawValue
  }

  public init?(code: String) {
    guard code.utf8.count == 3 else {
      return nil
    }
    switch code.uppercased() {
    case "CNY": self = .cny
    default: return nil
    }
  }

  public var code: String {
    "CNY"
  }

  public var name: String {
    "cn yuan"
  }
}

/// ISO 639
public enum Language: UInt32, Identifiable, CaseIterable, Codable {
  case chi = 0x111111

  public var id: Self {self}

  public var name: String {
    ""
  }

  public var alpha2Code: String? {
    "AA"
  }

  public var alpha3BibliographicCode: String {
    "AA"
  }

  public var alpha3TerminologicCode: String {
    "AAA"
  }
}

func convertAlphaCodeToHexString(_ str: String) -> String {
  str.utf8.hexString(uppercase: false, prefix: "0x")
}
