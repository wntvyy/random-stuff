math.randomseed(os.clock()*100000000000)

local numberOfQuestions = 10000 -- edit here

local listA = {
    "What is",
    "Who is",
    --"Why is",
    --"When is",
    "Where is",
}

local listB = {
    "the central idea of",
    "the square root of",
    "the theme of",
    "the factorial of",
}

local listC = {
    "+",
    "/",
    "-",
    "*",
}

local places = {
    "the Eiffel Tower",
    "the Washington Monument",
    "the White House",
    "the nearest Pizza Hut",
}

local books = {
    "Fahrenheit 451",
    "The Great Gatsby",
    "Moby Dick",
    "War and Piece",
    "Da Vinci Code",
}

local names = {
    "Donald Trump",
    "Michael Jackson",
    "George W. Bush",
    "George H.W. Bush",
    "Barack Obama",
    "George Washington",
}

function createRandomQuestion()
   local mathQuestion = false
   local randomListA = listA[math.random(1, #listA)]
   local randomListB
   local randomName
   local randomPlace
   local randomBook = books[math.random(1, #books)]
   if randomListA == "What is" then
      randomListB = listB[math.random(1, #listB)]
      if randomListB == "the square root of" or randomListB == "the factorial of" then
          mathQuestion = true
      else
          mathQuestion = false
      end
    end

    if randomListA == "Who is" then
        randomName = names[math.random(1, #names)]
        return randomListA .. " " .. randomName .. "?"
    end
   
   if randomListA == "Where is" then
       randomPlace = places[math.random(1, #places)]
       return randomListA .. " " .. randomPlace .. "?"
   end
   
    if mathQuestion then
       local randomMathOperation = listC[math.random(1, #listC)]
          return randomListA .. " " .. randomListB .. " " .. tostring(math.random(0, 100)) .. "" .. randomMathOperation .. "" .. tostring(math.random(0, 100)) .. "?"
    end

    if not mathQuestion then 
       local newListB = {}
       for i, v in pairs(listB) do
           if v == "the theme of" or v == "the central idea of" then
              table.insert(newListB, v) 
           end
        end
    
        local randomNewListB = newListB[math.random(1, #newListB)]
        return randomListA .. " " .. randomNewListB .. " " .. randomBook .. "?"
    end
end

math.randomseed(os.clock()*100000000000)

for i=1, numberOfQuestions, 1 do
   print(createRandomQuestion()) 
end
