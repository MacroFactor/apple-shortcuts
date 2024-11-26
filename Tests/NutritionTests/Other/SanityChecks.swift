import Testing
import Foundation
import Nutrition

@Suite
struct SanityChecks {

  @Test func macroFactorFoodRoundTrip() throws {
    let food = MacroFactorFood.testCase()
    let encoded = try JSONEncoder().encode(food)
    let decoded = try JSONDecoder().decode(MacroFactorFood.self, from: encoded)
    #expect(decoded == food)
  }

  @Test func macroFactorTodaySummaryRoundTrip() throws {
    let summary = MacroFactorTodaySummary.testCase()
    let encoded = try JSONEncoder().encode(summary)
    let decoded = try JSONDecoder().decode(MacroFactorTodaySummary.self, from: encoded)
    #expect(decoded == summary)
  }

  @Test func nutritionalContentContainerEncodesAsDictionary() throws {
    let expectedJSON = """
{
  "caffeine" : 30,
  "energy" : 100
}
"""
    let dto = NutritionalContent([
      .energy: 100.0,
      .caffeine: 30.0
    ])
    let encoded = try JSONEncoder.stable().encode(dto)
    let json = try #require(String(data: encoded, encoding: .utf8))
    #expect(json == expectedJSON)
  }

  @Test func goalConsumptionRemainingContainerEncodesAsDictionary() throws {
    let expectedJSON = """
{
  "fiber" : {
    "minimum" : 1
  },
  "water" : {
    "maximum" : 1000,
    "minimum" : -50,
    "target" : 0
  }
}
"""
    let encoded = try JSONEncoder.stable().encode(GoalConsumptionRemainingByNutrientDictionary(.testCase()))
    let json = try #require(String(data: encoded, encoding: .utf8))
    #expect(json == expectedJSON)
  }
}

// MARK: - Test Cases

private extension MacroFactorFood {
  static func testCase() -> MacroFactorFood {
    MacroFactorFood(
      source: "my-shot-logger",
      icon: .coffeeEspresso,
      name: "Purple Caturra Washed, Extractamundo Dos",
      nutrients: [
        .caffeine: 50.0
      ],
      serving: .custom(Serving.CustomServing(amount: 36.0, unit: .milliliters)),
      llmPrompt: "light roast turbo espresso shot",
      barcode: "123456789",
      brand: "Finca Monteblanco",
      beverage: .beverage,
      notes: "Not fruity enough. Loosen grind, charge roast hotter.",
      recipe: nil
    )
  }
}

private extension MacroFactorTodaySummary {
  static func testCase() -> MacroFactorTodaySummary {
    MacroFactorTodaySummary(
      consumed: [
        .fiber: 0,
        .water: 2000
      ],
      remaining: .testCase()
    )
  }
}

private extension [Nutrient: GoalConsumptionRemaining] {
  static func testCase() -> Self {
    [
      .fiber: GoalConsumptionRemaining(minimum: 1, target: nil, maximum: nil),
      .water: GoalConsumptionRemaining(minimum: -50, target: 0, maximum: 1000),
    ]
  }
}
