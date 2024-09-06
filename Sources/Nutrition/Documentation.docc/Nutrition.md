# ``Nutrition``

@Metadata { 
  @TitleHeading("MacroFactor")
  @PageColor(purple)
  @PageImage(purpose: icon, source: mf_transparent_white.png, alt: "MacroFactor Logo")
}

## Overview

On iOS, you can use Apple's Shortcuts app to log food to MacroFactor via Siri and custom automations. 

Our *Log Food by JSON* intent uses ``MacroFactorFood`` to parse your input. All of our Shortcuts return a ``MacroFactorTodaySummary``.


## Topics

### JSON Schema

- ``MacroFactorFood``
- ``MacroFactorTodaySummary``

### Properties

- ``Beverage``
- ``GoalConsumptionRemaining``
- ``Icon``
- ``Nutrient``
- ``Serving``

### Encoding Containers

These simply wrap a [Nutrient: Value] dictionary for encoding. (Swift's Codable implementation otherwise encodes these dictionaries as an array of alternating key value pairs.)

- ``GoalConsumptionRemainingByNutrientDictionary``
- ``NutritionalContent``
