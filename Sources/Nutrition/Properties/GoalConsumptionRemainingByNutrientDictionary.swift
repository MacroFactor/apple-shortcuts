import Foundation

/// Encoding container for a JSON dictionary. Keys are the String raw value of ``Nutrition/Nutrient``. Values are ``GoalConsumptionRemaining``.
public struct GoalConsumptionRemainingByNutrientDictionary: Equatable {

  @_documentation(visibility: internal)
  public var nutrients: [Nutrient: GoalConsumptionRemaining]

  @_documentation(visibility: internal)
  public init(_ nutrients: [Nutrient: GoalConsumptionRemaining]) {
    self.nutrients = nutrients
  }
}

extension GoalConsumptionRemainingByNutrientDictionary: Codable {

  /// Overrides Swift's default encoding (which would be key value pair tuples).
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    let nutrients = nutrients.reduce(into: [String: GoalConsumptionRemaining]()) { dict, element in
      dict[element.key.rawValue] = element.value
    }
    try container.encode(nutrients)
  }

  /// Decodes from Dictionary<String, RemainingToday>
  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let rawValues = try container.decode([String: GoalConsumptionRemaining].self)
    self.nutrients = [:]
    for (key, value) in rawValues {
      guard let nutrient = Nutrient(rawValue: key) else {
        throw DecodingError.dataCorruptedError(
          in: container,
          debugDescription: "Unknown nutrient key: \(key)"
        )
      }
      nutrients[nutrient] = value
    }
  }
}
