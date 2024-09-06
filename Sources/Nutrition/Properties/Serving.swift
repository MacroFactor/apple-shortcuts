import Foundation

/// Quantity represented by the ``MacroFactorFood`` and its nutritional content.
public enum Serving: Equatable {
  case one
  case per100Grams
  case per100ML
  case custom(CustomServing)

  public struct CustomServing: Codable, Equatable {
    public let amount: Decimal
    public let unit: Unit

    public init(amount: Decimal, unit: Unit) {
      self.amount = amount
      self.unit = unit
    }
  }

  public enum Unit: String, Codable, Equatable {
    case grams
    case pounds
    case ounces
    case fluidOuncesUS
    case milliliters
    case cupsUS
    case tablespoonsUS
    case teaspoonsUS
  }
}

extension Serving: Codable {
  public func encode(to encoder: Encoder) throws {
      var container = encoder.singleValueContainer()

      switch self {
      case .one:
          try container.encode("one")
      case .per100Grams:
          try container.encode("per100Grams")
      case .per100ML:
          try container.encode("per100ML")
      case .custom(let customServing):
          try container.encode(customServing)
      }
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()

    if let stringValue = try? container.decode(String.self) {
      switch stringValue {
      case "one":
        self = .one
      case "per100Grams":
        self = .per100Grams
      case "per100ML":
        self = .per100ML
      default:
        throw DecodingError.dataCorruptedError(
          in: container,
          debugDescription: "Invalid serving: \(stringValue)."
        )
      }
    } else {
      let custom = try container.decode(CustomServing.self)
      self = .custom(custom)
    }
  }
}
