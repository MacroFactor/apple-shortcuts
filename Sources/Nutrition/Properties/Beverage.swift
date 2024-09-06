/// Flag beverages for hydration tracker and alcoholic beverage counter features in MacroFactor and integrations, such as Apple Health.
public enum Beverage: String, Codable, Equatable {
  /// An alcoholic beverage for tracking consumption counts in Apple Health.
  case alcohol
  /// A non-alcoholic drink.
  case beverage
}
