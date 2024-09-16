## Custom Shortcuts
You can create custom shortcuts to log food into MacroFactor. For example:
- pipe a photo through an LLM and into our `Log by JSON` shortcut action)
- react to the JSON our shortcuts emit about today's consumption and goals
- filter your logged food history (using the `Find Recent Food` action)

If your shortcut makes sense to share, we'd love for you to PR [CommunityShortcuts](../main/CommunityShortcuts). Linking to that merged GitHub URL in Reddit posts would be great for maintenance and credit.

> [!TIP]
> * To skip saying "MacroFactor ..." to Siri, long press on our existing shortcut and tap "New Shortcut". The title you choose is all you need to say. Example: ["Log water"](../main/CommunityShortcuts/LogWater.shortcut)
> * Prefill all or some variables in our existing shortcuts. Examples: ["Log my gym water bottle"](../main/CommunityShortcuts/LogMyGymWaterBottle.shortcut) or ["Log a pint"](../main/CommunityShortcuts/LogAPint.shortcut)
> * Put an NFC tag on your blender to tap your phone to log a smoothie. In Apple's Shortcuts app, tap the Automation tab, tap + on the top right, scroll down to NFC, and tap Scan to set it up.
> * To create a custom Shortcut, open Apple's Shortcuts app, tap + on the top right, + Add Action, and scroll to find MacroFactor.

## JSON Schemas

We import this Swift package to parse `Log by JSON` inputs and encode the JSON we emit from all food-related shortcuts. 

Interactive example JSON blobs are in test files for [logging by JSON](../main/Tests/NutritionTests/JsonSamplesFood.swift) or [reading the JSON MacroFactor shortcuts emit](../main/Tests/NutritionTests/JsonSamplesTodaySummary.swift).


You can also view documentation in Xcode's native browser by opening [Nutrition.doccarchive](../main/Nutrition.doccarchive) or, if you have this package open in Xcode, by pressing `⌃⇧⌘ D`​.

Please include a unique `source` identifier in your JSON. If problems arise from a widely distributed shortcut, this stable identifier could help with fixes.

> [!NOTE]
> The `Log by JSON` action is built for logging food in the moment, not bulk import of past consumption.
