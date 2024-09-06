import Testing
import Foundation
import Nutrition

struct JsonSamplesTodaySummaryTests {

  @Test func printYourExampleHere() throws {
    let data = try JSONEncoder.stable().encode(MacroFactorTodaySummary.yourExample())
    let json = try #require(String(data: data, encoding: .utf8))
    print(json)
  }

  @Test func writeNoConsumptionNoGoalsMet() throws {
    let expectedJson = """
{
  "consumed" : {

  },
  "remaining" : {
    "water" : {
      "maximum" : 3500,
      "minimum" : 2000,
      "target" : 2500
    }
  }
}
"""
    let data = try JSONEncoder.stable().encode(MacroFactorTodaySummary.noGoalsMet())
    let json = try #require(String(data: data, encoding: .utf8))
    #expect(json == expectedJson)
  }

  @Test func writeConsumptionMetOrExceededSomeGoals() throws {
    let expectedJson = """
{
  "consumed" : {
    "water" : 2500
  },
  "remaining" : {
    "water" : {
      "maximum" : 1000,
      "minimum" : -500,
      "target" : 0
    }
  }
}
"""
    let data = try JSONEncoder.stable().encode(MacroFactorTodaySummary.someGoalsMetOrExceeded())
    let json = try #require(String(data: data, encoding: .utf8))
    #expect(json == expectedJson)
  }
}

private extension MacroFactorTodaySummary {
  static func yourExample() -> MacroFactorTodaySummary {
    MacroFactorTodaySummary(
      consumed: [
        .water: 2000
      ],
      remaining: [
        .water: GoalConsumptionRemaining(
          minimum: 0, // Minimum goal was 2000 mL
          target: nil,
          maximum: nil
        )
      ]
    )
  }

  static func noGoalsMet() -> MacroFactorTodaySummary {
    MacroFactorTodaySummary(
      consumed: [:],
      remaining: [
        .water: GoalConsumptionRemaining(
          minimum: 2000, // Minimum goal was 2000 mL
          target: 2500, // Target was 2500 mL
          maximum: 3500 // Ceiling was 3500 mL
        )
      ]
    )
  }

  static func someGoalsMetOrExceeded() -> MacroFactorTodaySummary {
    MacroFactorTodaySummary(
      consumed: [
        .water: 2500
      ],
      remaining: [
        .water: GoalConsumptionRemaining(
          minimum: -500, // Minimum goal was 2000 mL
          target: 0, // Target was 2500 mL
          maximum: 1000 // Ceiling was 3500 mL
        )
      ]
    )
  }
}
