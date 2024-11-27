import Foundation

/// Encoding container for a JSON dictionary `[String: Decimal]`. Keys are the String raw value of ``Nutrition/Nutrient``. Values are in grams, unless [otherwise specified](<doc:Nutrient#Gram-Exceptions>)
public struct NutritionalContent: Equatable {

  @_documentation(visibility: internal)
  public var nutrients: [Nutrient: Decimal]

  @_documentation(visibility: internal)
  public init(_ nutrients: [Nutrient: Decimal]) {
    self.nutrients = nutrients
  }
}

extension NutritionalContent: Codable {

  /// Overrides Swift's default encoding (which would be key value pair tuples).
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    let nutrients = self.nutrients.reduce(into: [String: Decimal]()) { dict, element in
      dict[element.key.rawValue] = element.value
    }
    try container.encode(nutrients)
  }

  /// Decodes from Dictionary<String, Decimal>
  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let rawValues = try container.decode([String: Decimal].self)
    self.nutrients = rawValues.reduce(into: [Nutrient: Decimal](), { dict, element in
      guard let nutrient = Nutrient(rawValue: element.key) else { return }
      dict[nutrient] = element.value
    })
  }
}
