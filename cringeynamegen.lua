
math.randomseed(os.clock()*100000000000)

local numberOfNames = 500 -- edit here

local names = {
	"Aaron",
	"Clara",
	"Nick",
	"William",
	"John",
	"Jason",
	"Jacob",
	"Jonathan",
	"Nathan",
	"Timothy",
	"Jack",
	"Ryan",
	"Isabella",
	"Bella",
	"Kelly",
	"Maya",
	"Elsa",
	"Elsie",
	"Nichole",
	"Michelle",
	"Laura",
	"Danny",
	"Bob",
	"Bobby",
	"Nicholas",
	"Brian",
	"Jackson",
	"Michael",
	"Cole",
	"Cayden",
	"Matthew",
	"Juan",
	"Chris",
	"Christopher",
	"Billy",
	"Abby",
	"Ted",
	"Federico",
	"Logan",
	"Calvin",
	"Jesse",
	"Carly",
	"Sandro",
	"Danielle",
	"Eric",
	"Doug",
	"Donald",
	"Fred",
	"Ed",
	"Edward",
	"Alex",
	"Charlie",
	"Malcolm",
}

local other3 = {
    "Gamer",
    "Cool",
    "Kid",
    "CoolKid",
    "RichKid",
    "Rich",
    "_24k",
    "Golden",
    "Gold",
    "_14k",
    "_Jhit",
    "_GamerGod",
    "_GG",
    "_FloridaJhit",
    "_FL",
    "_Pro",
    "_ProFortnite",
}

local other1 = {
    "xX",
    "xXx",
    "ii_",
    "i_",
    "xXxX",
    "X",
    "24k",
    "14k",
    "God",
    "Jhit_",
    "GG_",
}

local other2 = {
    "GamerGod",
    "GodGamer",
    "Xx",
    "xXx",
    "XxXx",
    "X",
    "_Jhit",
    "_GG",
}

function generateRandomUsername()
   local random1 = names[math.random(1, #names) ]
   local random2 = other1[math.random(1, #other1)]
   local random3 = other3[math.random(1, #other3)]
   local random4 = other2[math.random(1, #other2)]
   local randomNumber = math.random(10, 100)
   
   local lowercase1 = math.random(0,2)
   local lowercase2 = math.random(0,2)
   local lowercase3 = math.random(0,2)
   local lowercase4 = math.random(0,2)
   
   if lowercase1 == 1 then
       lowercase1 = true
   else
       lowercase1 = false
   end
   
    if lowercase2 == 1 then
       lowercase2 = true
   else
       lowercase2 = false
   end
   
    if lowercase3 == 1 then
       lowercase3 = true
   else
       lowercase3 = false
   end
   
    if lowercase4 == 1 then
       lowercase4 = true
   else
       lowercase4 = false
   end
   
   if lowercase1 then
      random1 = random1:lower() 
   end
   
   if lowercase2 then
      random2 = random2:lower()    
   end
   
   if lowercase3 then
      random3 = random3:lower() 
   end
   
   if lowercase4 then
      random4 = random4:lower() 
   end
   
   local username = random2 .. random1 .. tostring(randomNumber) .. random3 .. random4
   return username
end

for i=0, numberOfNames, 1 do
   print(generateRandomUsername()) 
end
