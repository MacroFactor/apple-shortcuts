import Testing
import Foundation
import Nutrition

@Suite
struct JsonSamplesFoodTests {

  @Test func maximalistExample() throws {
    let data = try JSONEncoder.stable().encode(MacroFactorFood.maximalist())
    let json = try #require(String(data: data, encoding: .utf8))
    print(json)
    _ = try JSONDecoder().decode(MacroFactorFood.self, from: Data(json.utf8))
  }

  @Test func minimalExample() throws {
    let food = try JSONDecoder().decode(MacroFactorFood.self, from: Data(espressoMinimalJSON.utf8))
    #expect(food.serving == .one)
  }

  @Test func customServingExample() throws {
    let food = try JSONDecoder().decode(MacroFactorFood.self, from: Data(espressoCustomServingJSON.utf8))
    #expect(food.serving == .custom(Serving.CustomServing(amount: 1, label: "pull", weight: 40.0))) // Weight is in grams
  }

  @Test func measuredServingExample() throws {
    let food = try JSONDecoder().decode(MacroFactorFood.self, from: Data(espressoMeasuredServingJSON.utf8))
    #expect(food.serving == .measured(Serving.MeasuredServing(amount: 40.0, unit: .grams)))
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

/// An arbitrary serving (e.g., a helping). We use its weight (in grams) for changing quantity or to other serving sizes.
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
    "amount" : 1,
    "label" : "pull",
    "weight" : 40
  },
  "source" : "my-shot-logger"
}
"""

/// We accept a limited number of units. See ``Serving.Unit``.
private let espressoMeasuredServingJSON = """
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
    "unit" : "grams"
  },
  "source" : "my-shot-logger"
}
"""

private let maximalistJSON = """
{
  "barcode" : "123456789",
  "brand" : "Manufacturer Name",
  "icon" : "coffeeEspresso",
  "llmPrompt" : "Saving the prompt supports reanalysis later",
  "name" : "Short Food Title",
  "notes" : "Personal notes",
  "nutrients" : {
    "alcohol" : 1,
    "caffeine" : 1,
    "calcium" : 1,
    "carbs" : 1,
    "cholesterol" : 1,
    "choline" : 1,
    "copper" : 1,
    "cystine" : 1,
    "energy" : 1,
    "fat" : 1,
    "fiber" : 1,
    "folate" : 1,
    "histidine" : 1,
    "iron" : 1,
    "isoleucine" : 1,
    "leucine" : 1,
    "lysine" : 1,
    "magnesium" : 1,
    "manganese" : 1,
    "methionine" : 1,
    "monounsaturatedFat" : 1,
    "omega3" : 1,
    "omega3ALA" : 1,
    "omega3DHA" : 1,
    "omega3EPA" : 1,
    "omega6" : 1,
    "phenylalanine" : 1,
    "phosphorus" : 1,
    "polyunsaturatedFat" : 1,
    "potassium" : 1,
    "protein" : 1,
    "saturatedFat" : 1,
    "selenium" : 1,
    "sodium" : 1,
    "starch" : 1,
    "sugars" : 1,
    "sugarsAdded" : 1,
    "threonine" : 1,
    "transFat" : 1,
    "tryptophan" : 1,
    "tyrosine" : 1,
    "valine" : 1,
    "vitaminA" : 1,
    "vitaminB1" : 1,
    "vitaminB12" : 1,
    "vitaminB2" : 1,
    "vitaminB3" : 1,
    "vitaminB5" : 1,
    "vitaminB6" : 1,
    "vitaminC" : 1,
    "vitaminD" : 1,
    "vitaminE" : 1,
    "vitaminK" : 1,
    "water" : 1,
    "zinc" : 1
  },
  "serving" : {
    "amount" : 36,
    "unit" : "milliliters"
  },
  "source" : "name-of-my-shortcut-script-to-help-identify-problems-later"
}
"""

private extension MacroFactorFood {
  static func maximalist() -> MacroFactorFood {
    MacroFactorFood(
      source: "name-of-my-shortcut-script-to-help-identify-problems-later",
      icon: .coffeeEspresso,
      name: "Short Food Title",
      nutrients: [
        .energy: 1.0, /// kcal
        .carbs: 1.0,
        .fat: 1.0,
        .protein: 1.0,

        .alcohol: 1.0,
        .caffeine: 1.0, /// mg
        .water: 1.0,
        .cholesterol: 1.0, /// mg
        .choline: 1.0, /// mg

        .cystine: 1.0,
        .histidine: 1.0,
        .isoleucine: 1.0,
        .leucine: 1.0,
        .lysine: 1.0,
        .methionine: 1.0,
        .phenylalanine: 1.0,
        .threonine: 1.0,
        .tryptophan: 1.0,
        .tyrosine: 1.0,
        .valine: 1.0,

        .fiber: 1.0,
        .starch: 1.0,
        .sugars: 1.0,
        .sugarsAdded: 1.0,

        .monounsaturatedFat: 1.0,
        .polyunsaturatedFat: 1.0,
        .saturatedFat: 1.0,
        .transFat: 1.0,
        .omega3: 1.0,
        .omega3ALA: 1.0,
        .omega3EPA: 1.0,
        .omega3DHA: 1.0,
        .omega6: 1.0,

        .folate: 1.0, /// mcg
        .vitaminA: 1.0, /// mcg
        .vitaminB1: 1.0, /// mg
        .vitaminB2: 1.0, /// mg
        .vitaminB3: 1.0, /// mg
        .vitaminB5: 1.0, /// mg
        .vitaminB6: 1.0, /// mg
        .vitaminB12: 1.0, /// mcg
        .vitaminC: 1.0, /// mg
        .vitaminD: 1.0, /// mcg
        .vitaminE: 1.0, /// mg
        .vitaminK: 1.0, /// mcg

        .calcium: 1.0, /// mg
        .copper: 1.0, /// mg
        .iron: 1.0, /// mg
        .magnesium: 1.0, /// mg
        .manganese: 1.0, /// mg
        .phosphorus: 1.0, /// mg
        .potassium: 1.0, /// mg
        .selenium: 1.0, /// mcg
        .sodium: 1.0, /// mg
        .zinc: 1.0, /// mg
      ],
      serving: .measured(Serving.MeasuredServing(amount: 36.0, unit: .milliliters)),
      llmPrompt: "Saving the prompt supports reanalysis later",
      barcode: "123456789",
      brand: "Manufacturer Name",
      beverage: .none,
      notes: "Personal notes",
      recipe: nil
    )
  }
}
