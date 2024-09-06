import Testing
import Foundation
import Nutrition

struct JsonSamplesFoodTests {

  @Test func printYourExampleHere() throws {
    let data = try JSONEncoder.stable().encode(MacroFactorFood.yourExample())
    let json = try #require(String(data: data, encoding: .utf8))
    print(json)
  }

  @Test func parseMinimalistExample() throws {
    let food = try JSONDecoder().decode(MacroFactorFood.self, from: Data(espressoMinimalJSON.utf8))
    #expect(food.serving == .one)
  }

  @Test func parseDetailedExample() throws {
    let food = try JSONDecoder().decode(MacroFactorFood.self, from: Data(espressoDetailedJSON.utf8))
    #expect(food.serving == .one)
    #expect(food.llmPrompt?.isEmpty == false)
  }

  @Test func parseCustomServingExample() throws {
    let food = try JSONDecoder().decode(MacroFactorFood.self, from: Data(espressoCustomServingJSON.utf8))
    #expect(food.serving == .custom(Serving.CustomServing(amount: 40.0, unit: .milliliters)))
  }
}

private let espressoMinimalJSON = """
{
  "icon" : "coffeeEspresso",
  "name" : "Morning Coffee",
  "nutrients" : {
    "caffeine" : 30,
    "water" : 36,
  },
  "serving": "one",
  "source" : "my-shot-logger"
}
"""

private let espressoDetailedJSON = """
{
  "barcode" : "123456789",
  "beverage" : "beverage",
  "brand" : "Finca Monteblanco",
  "icon" : "coffeeEspresso",
  "llmPrompt" : "light roast turbo espresso shot",
  "name" : "Purple Caturra Washed, Extractamundo Dos",
  "notes" : "Not fruity enough. Loosen grind, charge roast hotter.",
  "nutrients" : {
    "caffeine" : 30,
    "water" : 36,
  },
  "serving" : "one",
  "source" : "my-shot-logger"
}
"""

private let espressoCustomServingJSON = """
{
  "barcode" : "123456789",
  "beverage" : "beverage",
  "brand" : "Finca Monteblanco",
  "icon" : "coffeeEspresso",
  "llmPrompt" : "light roast turbo espresso shot",
  "name" : "Purple Caturra Washed, Extractamundo Dos",
  "notes" : "Not fruity enough. Loosen grind, charge roast hotter.",
  "nutrients" : {
    "caffeine" : 30,
    "water" : 36,
  },
  "serving" : {
    "amount" : 40,
    "unit" : "milliliters"
  },
  "source" : "my-shot-logger"
}
"""

private extension MacroFactorFood {
  static func yourExample() -> MacroFactorFood {
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
