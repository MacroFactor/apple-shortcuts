import Foundation

/// Remaining consumption today relative to any goal(s). Values are in grams, unless [otherwise specified](<doc:Nutrient#Gram-Exceptions>). If a goal is surpassed, values will be negative.
public struct GoalConsumptionRemaining: Codable, Equatable {
  public let minimum: Decimal?
  public let target: Decimal?
  public let maximum: Decimal?

  @_documentation(visibility: internal)
  public init(minimum: Decimal?, target: Decimal?, maximum: Decimal?) {
    self.minimum = minimum
    self.target = target
    self.maximum = maximum
  }
}
