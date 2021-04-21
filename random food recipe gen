
math.randomseed(os.clock()*100000000000)

local numberOfRecipes = 100

local ingredients = {
"Milk",
"Eggs",
"Flour",
"Ketchup",
"Tabasco Sauce",
"Carrots",
"Brocolli",
"Water",
"Yeast",
"Bananas",
"Apple",
"Applesauce",
"Prune Juice",
"Tylenol",
"Cheese",
"Lettuce",
"Eggplant",
"Sugar",
"Salt",
"Pepper",
"Whipped Cream",
"Egg Whites",
"Egg Yolks",
"Bread Crumbs",
"Beef Jerky",
"Pork Feet",
"Chicken Hearts",
"Mustard",
"Pickle Juice",
"Butter",
"Olive Oil",
"Vinegar",
}

local recipeFor = {
"NY Strip Steak",
"Michelin Star Porkchops",
"Ice Cream",
"Roast Chicken",
"Hotdogs",
"Chicken Tenders",
"Cheeseburgers",
"Chicken Nuggets",
}

local function generateRandomRecipe(amount)
   local amountOfIngredientsNeeded = amount
   local ingredientTable = {}
   
   local ingredientsFor = recipeFor[math.random(1, #recipeFor)]
   
   for i=0, amountOfIngredientsNeeded, 1 do
       local randomNumber = math.random(1, #ingredients)
       table.insert(ingredientTable, ingredients[randomNumber])
   end
   
   local firstText = ingredientsFor
   local secondText = "For this recipe you will need: "
   
   for i, v in pairs(ingredientTable) do
      secondText = secondText .. v .. ", " 
   end
   
   return firstText, secondText
end

for i=0, numberOfRecipes, 1 do
    local one, two = generateRandomRecipe(5)
    print(one)
    print(two)
    print("")
end
