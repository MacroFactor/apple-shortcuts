import Testing
import Foundation
import Nutrition

@Suite
struct PlaygroundTests {

  @Test func yourExampleHere() throws {
    let data = try JSONEncoder.stable().encode(MacroFactorFood.yourExample())
    let json = try #require(String(data: data, encoding: .utf8))
    print(json)
  }

  @Test func yourExampleEncode() throws {
    _ = try JSONDecoder().decode(MacroFactorFood.self, from: Data(yourJSON.utf8))
  }
}

private extension MacroFactorFood {
  static func yourExample() -> MacroFactorFood {
    MacroFactorFood(
      source: "name-of-my-shortcut-script-to-help-identify-problems-later",
      icon: .foodDefault,
      name: "Title",
      nutrients: [
        .energy: 50.0
      ],
      serving: .one,
      llmPrompt: "Save for reanalysis",
      barcode: "123456789",
      brand: "Manufacturer",
      beverage: .none,
      notes: "Notes",
      recipe: nil
    )
  }
}

private let yourJSON = """
{
  "barcode": "987654321",
  "beverage": null,
  "brand": "Generic Brand",
  "icon": "foodDefault",
  "llmPrompt": "Nutritional analysis of a typical omelette",
  "name": "Omelette",
  "notes": "Made with 3 large eggs, cheese, and butter",
  "source": "name-of-my-shortcut-script-to-help-identify-problems-later",
  "serving": {
    "amount": 150,
    "unit": "grams"
  },
  "nutrients": {
    "alcohol": 0,
    "caffeine": 0,
    "calcium": 100,
    "carbs": 2.0,
    "cholesterol": 625,
    "choline": 300,
    "copper": 0.02,
    "cystine": 0.15,
    "energy": 310,
    "fat": 25.0,
    "fiber": 0,
    "folate": 50,
    "histidine": 0.2,
    "iron": 1.9,
    "isoleucine": 0.9,
    "leucine": 1.5,
    "lysine": 1.3,
    "magnesium": 13,
    "manganese": 0.02,
    "methionine": 0.5,
    "monounsaturatedFat": 10.0,
    "omega3": 0.4,
    "omega3ALA": 0.05,
    "omega3DHA": 0.2,
    "omega3EPA": 0.15,
    "omega6": 1.5,
    "phenylalanine": 0.8,
    "phosphorus": 230,
    "polyunsaturatedFat": 3.0,
    "potassium": 220,
    "protein": 20.0,
    "saturatedFat": 8.5,
    "selenium": 35,
    "sodium": 500,
    "starch": 0,
    "sugars": 1.0,
    "sugarsAdded": 0,
    "threonine": 0.8,
    "transFat": 0.2,
    "tryptophan": 0.3,
    "tyrosine": 0.7,
    "valine": 1.0,
    "vitaminA": 300,
    "vitaminB1": 0.1,
    "vitaminB12": 1.4,
    "vitaminB2": 0.5,
    "vitaminB3": 0.1,
    "vitaminB5": 1.5,
    "vitaminB6": 0.3,
    "vitaminC": 0,
    "vitaminD": 2.0,
    "vitaminE": 0.6,
    "vitaminK": 2,
    "water": 75,
    "zinc": 1.1
  }
}
"""
