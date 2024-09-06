# ``MacroFactorFood``

## JSON Examples

#### Minimal (Required parameters only)
```json
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
```

#### Single Serving
```json
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
```

#### Custom Serving
```json
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
    "unit" : "mL"
  },
  "source" : "my-shot-logger"
}
```

## Topics

### Required

- ``MacroFactorFood/icon``
- ``MacroFactorFood/name``
- ``MacroFactorFood/nutrients``
- ``MacroFactorFood/source``
- ``MacroFactorFood/serving``

### For LLM Input
- ``MacroFactorFood/llmPrompt``

### Optional
- ``MacroFactorFood/barcode``
- ``MacroFactorFood/beverage``
- ``MacroFactorFood/brand``
- ``MacroFactorFood/notes``
- ``MacroFactorFood/recipe``
