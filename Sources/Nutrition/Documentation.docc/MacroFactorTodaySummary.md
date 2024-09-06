# ``MacroFactorTodaySummary``

## JSON Examples

#### No logging today, water goal unmet
```json
{
  "consumed" : {},
  "remaining" : {
    "water" : {
      "minimum" : 2000,
      "target" : 2500,
      "maximum" : 3500
    }
  }
}
```

#### Logged 2.5 liters water, meeting or exceeding some goals
```json
{
  "consumed" : {
    "water" : 2500
  },
  "remaining" : {
    "water" : {
      "minimum" : -500,
      "target" : 0,
      "maximum" : 1000
    }
  }
}
```

## Topics

### Consumption Total Today

- ``MacroFactorTodaySummary/consumed``

### Remaining Consumption for Goal(s)

- ``MacroFactorTodaySummary/remaining``
- ``GoalConsumptionRemaining``
