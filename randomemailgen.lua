math.randomseed(os.clock()*100000000000)

function doRandomEmail()
local lowercaseFirstName = math.random(0,3)
local lowerCaseLastName = math.random(0,3)
	
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
}

local lastNames = {
	"Williams",
	"Jones",
	"Jack",
	"Appleseed",
	"Doe",
	"Jacobs",
	"Joseph",
	"Ryan",
	"Johnson",
	"Gay",
	"Janson",
	"Menesses",
}

local emails = {
	"@yahoo.com",
	"@hotmail.com",
	"@gmail.com",
	"@aol.com",
}

-- set cases

if lowercaseFirstName == 1 then
	lowercaseFirstName = false
else
	lowercaseFirstName = true
end

if lowerCaseLastName == 1 then
	lowerCaseLastName = false
else
	lowerCaseLastName = true
end

-- make emails
local firstName = names[math.random(1, #names)]
local lastName = lastNames[math.random(1, #lastNames)]
local randomTwoDigit = math.random(9, 100)
local randomEmailIndex = math.random(1, #emails)

if lowercaseFirstName then
	firstName = firstName:lower()
end
	
if lowerCaseLastName then
	lastName = lastName:lower()
end
	
local email = emails[randomEmailIndex]
	
local combine = firstName .. lastName .. tostring(randomTwoDigit)
local combine2 = tostring(combine) .. email
return combine2
	
end

local times = 300 -- how many emails you wanna print

for i=0, times, 1 do
	print(doRandomEmail())
end
