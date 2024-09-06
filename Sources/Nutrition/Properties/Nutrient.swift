/// Macro or micronutrient tracked by MacroFactor. All units are grams unless specified otherwise.
///
/// ### Gram Exceptions
/// 
/// | Nutrient      | Unit         |
/// |---------------|--------------|
/// | ``Nutrient/energy``        | `kcal` |
/// | ``Nutrient/caffeine``      | `mg`   |
/// | ``Nutrient/choline``       | `mg`   |
/// | ``Nutrient/cholesterol``   | `mg`   |
/// | ``Nutrient/vitaminB1``     | `mg`   |
/// | ``Nutrient/vitaminB2``     | `mg`   |
/// | ``Nutrient/vitaminB3``     | `mg`   |
/// | ``Nutrient/vitaminB5``     | `mg`   |
/// | ``Nutrient/vitaminB6``     | `mg`   |
/// | ``Nutrient/vitaminC``      | `mg`   |
/// | ``Nutrient/vitaminE``      | `mg`   |
/// | ``Nutrient/calcium``       | `mg`   |
/// | ``Nutrient/copper``        | `mg`   |
/// | ``Nutrient/iron``          | `mg`   |
/// | ``Nutrient/magnesium``     | `mg`   |
/// | ``Nutrient/manganese``     | `mg`   |
/// | ``Nutrient/phosphorus``    | `mg`   |
/// | ``Nutrient/potassium``     | `mg`   |
/// | ``Nutrient/sodium``        | `mg`   |
/// | ``Nutrient/zinc``          | `mg`   |
/// | ``Nutrient/folate``        | `mcg`   |
/// | ``Nutrient/vitaminA``      | `mcg`   |
/// | ``Nutrient/vitaminB12``    | `mcg`   |
/// | ``Nutrient/vitaminD``      | `mcg`   |
/// | ``Nutrient/vitaminK``      | `mcg`   |
/// | ``Nutrient/selenium``      | `mcg`   |

public enum Nutrient: String, CaseIterable, Codable {
  /// kcal
  case energy
  case carbs
  case fat
  case protein

  case alcohol
  /// mg
  case caffeine
  case water
  /// mg
  case cholesterol
  /// mg
  case choline

  case cystine
  case histidine
  case isoleucine
  case leucine
  case lysine
  case methionine
  case phenylalanine
  case threonine
  case tryptophan
  case tyrosine
  case valine

  case fiber
  case starch
  case sugars
  case sugarsAdded

  case monounsaturatedFat
  case polyunsaturatedFat
  case saturatedFat
  case transFat
  case omega3
  case omega3ALA
  case omega3EPA
  case omega3DHA
  case omega6

  /// mcg
  case folate
  /// mcg
  case vitaminA
  /// mg
  case vitaminB1
  /// mg
  case vitaminB2
  /// mg
  case vitaminB3
  /// mg
  case vitaminB5
  /// mg
  case vitaminB6
  /// mcg
  case vitaminB12
  /// mg
  case vitaminC
  /// mcg
  case vitaminD
  /// mg
  case vitaminE
  /// mcg
  case vitaminK

  /// mg
  case calcium
  /// mg
  case copper
  /// mg
  case iron
  /// mg
  case magnesium
  /// mg
  case manganese
  /// mg
  case phosphorus
  /// mg
  case potassium
  /// mcg
  case selenium
  /// mg
  case sodium
  /// mg
  case zinc
}
