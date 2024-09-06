/// Cartoon shown in MacroFactor's food log. Doubles as a metadata tag (e.g., is a coffee).
public enum Icon: String, Codable {
  case water
  case coffee
  case coffeeCappuccino
  case coffeeEspresso
  case coffeeIceWhip
  case creamer
  case juiceApple
  case juiceLemonade
  case juiceOrange
  case juiceTomato
  case juiceWatermelon
  case kefir
  case milk
  case milkshakeTwoFlavors
  case milkSoy
  case milkRice
  case milkshake
  case soda
  case tea
  case teaFruitLemon
  case teaFruitOrange
  case alcoholBeer
  case alcoholCocktail
  case alcoholLiqueur
  case alcoholMassProducedFruity
  case alcoholSpirit
  case alcoholWhiskey
  case alcoholWineRed
  case alcoholWineWhite

  case foodDefault
  case plateQuickAdd

  case acorn
  case almond
  case apple
  case appleRed
  case appleSauceBowl
  case appleSauceJar
  case artichoke
  case asparagus
  case avocado
  case babyMilk
  case bacon
  case bagel
  case bagSnackJunkFood
  case bakingPan
  case bananas
  case baoziXiaoLongBao
  case beansPan
  case beefTarTar
  case bellPepperGreen
  case bellPepperRed
  case bellPepperYellow
  case biryani
  case biscotti
  case biscuit
  case blueberries
  case blueberry
  case bokChoyXiaoBaiCai
  case bowlChopSticks
  case breadBaguette
  case breadLoafMultigrain
  case breadLoafWheat
  case breadMultigrainTwoSlices
  case breadPita
  case breadRyeTwoSlicesWithSpread
  case breadWheatTwoSlices
  case broccoli
  case burdockRoot
  case burgerCheesePattyLettuceTomato
  case burgerSesameSeedRoundBun
  case burgerSesameSeedRoundBunLettuceKetchup
  case burgerSquareBreadBunLettuceKetchup
  case burritoEnchiladaRollBrown
  case burritoEnchiladaRollGreen
  case burritoEnchiladaRollOrange
  case burritoSoftTacoChilis
  case butter
  case butterCrustPastriesSmall
  case butterCrustPastryLarge
  case butterPlate
  case butterPlatePale
  case cabbage
  case cabbageHead
  case cakeSliceCheesecake
  case cakeSliceChocolateCherry
  case cakeSquareChocolate
  case cakeSquares
  case calzone
  case candy
  case candyBar
  case candyToffee
  case cannedGoods
  case cantaloupe
  case carrot
  case cashews
  case casserole
  case cauliflower
  case celery
  case chard
  case cheeseSlice
  case cheeseString
  case cheeseWheel
  case cherries
  case chestnut
  case chicken
  case chickenGrilled
  case chickenNuggetsBBQSauce
  case chickenWings
  case chiliPeppersGreen
  case chiliPeppersRed
  case chiliPeppersRedYellow
  case chipsBaked
  case chipsBakedSeasoned
  case chipsPotato
  case chirashiBowlSushi
  case chocolateBars
  case chocolateChips
  case chocolateHotDrinkWhipCream
  case chocolateKiss
  case cinnamon
  case cinnamonRoll
  case cocoa
  case coconut
  case congee
  case corn
  case cottageCheese
  case crab
  case crackersDigestives
  case cranberries
  case croissant
  case croutons
  case cucumber
  case cupcakeChocolate
  case daikon
  case dairyIceCream
  case date
  case deer
  case dill
  case dinnerRolls
  case doubleCheeseBurgerSesameSeedRoundBun
  case doughnut
  case drySpicesBrown
  case drySpicesGreen
  case drySpicesOlive
  case drySpicesRed
  case drySpicesYellow
  case duck
  case egg
  case eggDeviled
  case eggplant
  case eggs
  case eggTartDanTa
  case falafel
  case fig
  case figNewtons
  case fish
  case frenchFries
  case fruitSalad
  case garlic
  case garlicRoasted
  case ginger
  case grapefruit
  case grapesGreen
  case grapesRed
  case gravy
  case greenBeans
  case greenBeansFive
  case greenOnion
  case guacamole
  case guava
  case gummyBears
  case honey
  case hotDogInBunMustard
  case hotDogs
  case hummus
  case iceCreamDrumstickChocolate
  case iceCreamDrumstickStrawberry
  case iceCreamSandwich
  case iceCreamSugarCone
  case iceCreamSundae
  case jamApricot
  case jamMarmalade
  case jamRed
  case jar
  case jarOrangeLarge
  case jello
  case jelloCake
  case jerkyBeef
  case kaiserRoll
  case ketchup
  case kiwi
  case lasagne
  case lemon
  case lentils
  case lettuce
  case lettuceHead
  case lime
  case lobster
  case lychee
  case macadamiaNut
  case macAndCheese
  case mango
  case mapleSyrup
  case marshmallow
  case mayo
  case mayoSqueezeBottle
  case mealPlateFullEnglishBreakfast
  case mealPlateSteakPotatoesVeggies
  case mealWaterGlassRice
  case meatballs
  case meatLoaf
  case meatLoafPan
  case melonHoneydew
  case milkCerealBlueBowl
  case milkCerealYellowBowl
  case mintGum
  case muffin
  case muffinNuts
  case mushroom
  case mustard
  case nut
  case nutBrazil
  case nutsMixed
  case oatmeal
  case octopus
  case oil
  case oliveBlack
  case oliveGreen
  case omelette
  case omeletteWithMeat
  case onion
  case onionRed
  case orange
  case oreos
  case oshirukoZenzaiAdzukiRedBean
  case overnightOats
  case oyster
  case pancake
  case pancakesStack
  case parsley
  case peach
  case peanut
  case peanutButter
  case pear
  case pearAsian
  case pearBosc
  case pecan
  case persimmon
  case pie
  case pieLatticeCrust
  case pineapple
  case pineNut
  case pistachio
  case pizzaPepperoni
  case pizzaPepperoniMushroom
  case plum
  case pomegranate
  case popcorn
  case popTarts
  case porkLoin
  case porkLoinWithDarkRub
  case potato
  case potatoesPurple
  case potatoesRedSweet
  case potatoesWhiteRusset
  case potatoRed
  case potPie
  case pretzel
  case pretzelSticks
  case prune
  case pumpkin
  case pumpkinSeed
  case radishes
  case raisins
  case raspberry
  case ravioli
  case rhubarb
  case ribs
  case riceBrownBowl
  case riceCake
  case riceWhiteBowl
  case saladBowl
  case saladEggsTomatoes
  case saladPlate
  case salami
  case salmonFilet
  case salsa
  case sashimiTuna
  case sauceBBQWorcestershire
  case sausage
  case scallops
  case seaweedSalad
  case shallot
  case shrimp
  case sloppyJoe
  case snowPeas
  case softServeChocolateSwirls
  case soup
  case soupBowl
  case soupBowlCongee
  case soupGreen
  case soupPea
  case soupRamenPork
  case soupRamenRed
  case soupRedTomato
  case sourCream
  case spaghettiRedSauce
  case spam
  case spicesGround
  case sproutedMungBean
  case squashAcorn
  case squid
  case starfruit
  case steakBoneIn
  case steakPlate
  case steakRaw
  case stewPot
  case strawberry
  case sugarBrownCubes
  case sugarWhite
  case sugarWhiteCubes
  case sunflowerSeeds
  case sushi
  case toast
  case tomato
  case tostadaLahmacun
  case turkey
  case turkeyRoast
  case turnip
  case turnover
  case vegetables
  case waffles
  case walnut
  case watercress
  case watermelon
  case wheat
  case wheatFlat
  case wokStirFry
  case yogurt
  case zucchini
}