import Foundation

/// JSON schema for the output of Shortcuts that log food or report progress toward today's goals.
public struct MacroFactorTodaySummary: Codable, Equatable {

  /// Sum of nutrients in all logged food and drink today. All units are grams unless specified otherwise in ``Nutrition/Nutrient`` documentation.
  public let consumed: NutritionalContent

  /// Remaining consumption today relative to any goal(s) set for a ``Nutrient``. In the ``GoalConsumptionRemaining`` object, all units are grams unless specified otherwise in ``Nutrition/Nutrient`` documentation. A negative value indicates the goal has been exceeded.
  public let remaining: GoalConsumptionRemainingByNutrientDictionary

  @_documentation(visibility: internal)
  public init(
    consumed: [Nutrient : Decimal],
    remaining: [Nutrient : GoalConsumptionRemaining]
  ) {
    self.consumed = NutritionalContent(consumed)
    self.remaining = GoalConsumptionRemainingByNutrientDictionary(remaining)
  }
}
