-- pretty useless

math.randomseed(os.clock()*100000000000)

local letters = {
"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
}

local symbols = {
"!", "@", "#", "$", "%", "^", "&", "*", "_",   
}

local function generateRandomString(amountOfCharacters)
   local numberOfCharacters = amountOfCharacters
   local characters = {}
   local finalString = ""
    
   for i=0, numberOfCharacters, 1 do
      local characterTypes = {"Letter", "Symbol", "Number"}
      local randomNumber = math.random(0,3)
      local characterType = characterTypes[randomNumber]
      local lowercase = math.random(0,3)

      if characterType == "Letter" then
          if lowercase == 1 then
             lowercase = true
          else
             lowercase = false
          end
          
          if lowercase then
              table.insert(characters, letters[math.random(1, #letters)]:lower())
          else
              table.insert(characters, letters[math.random(1, #letters)])
          end
      end
      
      if characterType == "Symbol" then
          table.insert(characters, tostring(symbols[math.random(1, #symbols)]))
      end
      
      if characterType == "Number" then
          table.insert(characters, tostring(math.random(0, 9)))
      end
   end
   
   for i, v in ipairs(characters) do
      finalString = finalString .. tostring(v)
   end
   return finalString
end

print(generateRandomString(1000))
