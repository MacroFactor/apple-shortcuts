import Foundation

/// JSON schema for logging a food into MacroFactor at the current date and time.
public struct MacroFactorFood: Codable, Equatable {

  /// Stable identifier for your Shortcut or script.
  public let source: String

  /// Cartoon shown in MacroFactor's food log. Doubles as a metadata tag (e.g., is a coffee).
  public let icon: Icon

  /// Title of this food.
  public let name: String

  /// Nutritional summary of this food (and any children) as a Dictionary keyed by nutrient names. All values are in grams unless specified otherwise in ``Nutrition/Nutrient`` documentation.
  public let nutrients: NutritionalContent

  /// Quantity represented by this food and its nutritional content.
  public var serving: Serving

  // MARK: - LLM

  /// Future-proof GPT generated estimates by passing in your prompt (or, if using a photo, an empty string).
  public let llmPrompt: String?

  // MARK: - Optional

  /// Packaged food barcode.
  public let barcode: String?

  /// Manufacturer of this food.
  public let brand: String?

  /// Flag beverages for hydration tracker and alcoholic beverage counter features in MacroFactor and integrations, such as Apple Health.
  public let beverage: Beverage?

  /// Open ended notes about this food.
  public let notes: String?

  /// Represent recipes by including child food objects. Ensure the parent's ``MacroFactorFood/nutrients`` should include the sum of child nutritional content, as this is not calculated.
  public let recipe: [MacroFactorFood]?

  @_documentation(visibility: internal)
  public init(
    source: String,
    icon: Icon,
    name: String,
    nutrients: [Nutrient: Decimal],
    serving: Serving,
    llmPrompt: String?,
    barcode: String?,
    brand: String?,
    beverage: Beverage?,
    notes: String?,
    recipe: [MacroFactorFood]?
  ) {
    self.source = source
    self.icon = icon
    self.name = name
    self.nutrients = NutritionalContent(nutrients)
    self.serving = serving
    self.llmPrompt = llmPrompt
    self.barcode = barcode
    self.brand = brand
    self.beverage = beverage
    self.notes = notes
    self.recipe = recipe
  }

  @_documentation(visibility: internal)
  public enum CodingKeys: String, CodingKey {
    case barcode
    case beverage
    case brand
    case icon
    case llmPrompt
    case name
    case notes
    case nutrients
    case recipe
    case serving
    case source
  }
}
