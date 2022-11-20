Atmosphere={{"a", "creepy", "trees", "A", "D", "L", "T"},
{"a", "dark", "memories", "A", "D", "L", "T"},
{"a", "death", "A", "D", "L", "T"},
{"a", "digging", "A", "D", "L", "T"},
{"a", "dream", "A", "D", "L", "T"},
{"a", "fog", "A", "D", "L", "T"},
{"a", "gibbous", "moon", "A", "D", "L", "T"},
{"a", "graffiti", "A", "D", "L", "T"},
{"a", "howls", "A", "D", "L", "T"},
{"a", "mists", "A", "D", "L", "T"},
{"a", "ol", "A", "D", "town", "A", "D", "L", "T"},
{"a", "rain", "A", "D", "L", "T"},
{"a", "rats", "A", "D", "L", "T"},
{"a", "screams", "A", "D", "L", "T"},
{"a", "stars", "A", "D", "L", "T"},
{"a", "thunder", "A", "D", "L", "T"},
{"a", "train", "A", "D", "L", "T"},
{"a", "wind", "A", "D", "L", "T"}
}

CharacterEvil={
{"c1", "apperation", "E1", "E2"},
{"c1", "cannibal", "E1", "E2"},
{"c1", "convict", "E1", "E2"},
{"c1", "cowled", "figure", "E1", "E2"},
{"c1", "creature", "E1", "E2"},
{"c1", "hag", "E1", "E2"},
{"c1", "lunatic", "E1", "E2"},
{"c1", "oncefriendly", "E1", "E2"},
{"c1", "undead", "E1", "E2"}
}

CharactersNeutral={
{"c2", "antiquarian", "A", "D", "L"},
{"c2", "beggar", "A", "D", "L"},
{"c2", "drunk", "A", "D", "L"},
{"c2", "mangy", "dog", "A", "D", "L"},
{"c2", "old", "man", "A", "D", "L"},
{"c2", "police", "A", "D", "L"},
{"c2", "preist", "A", "D", "L"},
{"c2", "scamp", "A", "D", "L"},
{"c2", "sobbing", "woman", "A", "D", "L"}
}

Danger={
{"d", "cloud", "D", "E1", "E2", "S"},
{"d", "flopping", "D", "E1", "E2", "S"},
{"d", "gateway", "D", "E1", "E2", "S"},
{"d", "manifestations", "D", "E1", "E2", "S"},
{"d", "ooze", "D", "E1", "E2", "S"},
{"d", "passage", "D", "E1", "E2", "S"},
{"d", "possession", "D", "E1", "E2", "S"}
}

EndCards={
{"e1", "death", "e1"},
{"e2", "Escape", "A", "D", "L", "S", "T"}
}

Location={
{"l", "cemetart", "A", "D", "T"},
{"l", "church", "A", "D", "T"},
{"l", "glade", "A", "D", "T"},
{"l", "house", "A", "D", "T"},
{"l", "mansion", "A", "D", "T"},
{"l", "mausoleum", "A", "D", "T"},
{"l", "town", "A", "D", "T"}
}

Object={
{"o", "amulet", "A", "C1", "C2", "D", "T"},
{"o", "deadbody", "A", "C1", "C2", "D", "T"},
{"o", "exotic", "thing", "A", "C1", "C2", "D", "T"},
{"o", "forbidden", "book", "A", "C1", "C2", "D", "T"},
{"o", "gun", "A", "C1", "C2", "D", "T"},
{"o", "knife", "A", "C1", "C2", "D", "T"},
{"o", "statue", "A", "C1", "C2", "D", "T"}
}

Pace={
{"pace1"},
{"pace2"},
{"pace3"},
{"pace4"},
{"pace5"},
{"pace6"},
{"pace7"},
{"pace8"},
{"pace9"},
{"pace10"},
{"pace11"},
{"pace12"},
{"pace13"},
{"pace14"},
{"pace15"}
}

Sleep={
{"s", "dawn-s"},
{"s", "fever-s"},
{"s", "night-s"},
{"s", "sleep-s"},
{"s", "weak"}
}


Start={{"start", "A", "D", "L", "T"}}

Threat={
{"t", "chase", "C1", "C2", "S", "T"},
{"t", "cluster", "C1", "C2", "S", "T"},
{"t", "conversation", "C1", "C2", "S", "T"},
{"t", "creaking", "hinges", "C1", "C2", "S", "T"},
{"t", "digging", "C1", "C2", "S", "T"},
{"t", "follower", "C1", "C2", "S", "T"},
{"t", "footsteps", "C1", "C2", "S", "T"},
{"t", "hidden", "shape", "C1", "C2", "S", "T"},
{"t", "illumination", "C1", "C2", "S", "T"},
{"t", "silhouette", "C1", "C2", "S", "T"},
{"t", "somber", "procession", "C1", "C2", "S", "T"},
{"t", "suspicious", "C1", "C2", "S", "T"},
{"t", "tracks", "C1", "C2", "S", "T"},
{"t", "unnatural", "C1", "C2", "S", "T"}
}

AllCards={{}}
table.insert(AllCards,Start)
table.insert(AllCards, Atmosphere)
table.insert(AllCards, Danger)
table.insert(AllCards, CharactersNeutral)
table.insert(AllCards,CharactersNeutral )
table.insert(AllCards, Pace)
table.insert(AllCards, Location)
table.insert(AllCards, Sleep)
table.insert(AllCards, Danger)
table.insert(AllCards, Threat)
table.insert(AllCards, EndCards)
a=""
CardNames={}

math.randomseed(os.time())

function getGroup(i)
o=""
v= AllCards[i]
 for ii,vv in pairs(v) do 
 for iii,vvv in pairs(vv) do
 o=o..vvv.."_" 
 end
 o=string.sub(o,1,-2).."\n"
 end
return o
end

function allCardNames()
CardNames={}
b=""
o=""
 for i,v in pairs(AllCards) do

 for ii,vv in pairs(v) do 
  a=""
	 for iii,vvv in pairs(vv) do
	 a=a..vvv.."_" 
	 end
	b= string.sub(a,1,-2)
 	o=o..b.."\n"
 table.insert(CardNames,b)
 end
end
return CardNames
end


function getCard(i)
allCardNames()
return CardNames[i]
end

function getShort(i)
a=getCard(i)
b,c=string.find(a,"%a+%_+%a+")
d=string.sub(a,b,c)
e= string.gsub(d,"_"," ")
return e
end

function randomCards()
allCardNames()
cn=#CardNames
o=""
 for i = 1,14,1 do
 r=math.random(2,cn)
 a=CardNames[r]
 b,c=string.find(a,"%a+%_+%a+")
 if b~= nil then
d=string.sub(a,b,c)
e= string.gsub(d,"_"," ")

o=o..e.."\n"
end
end
return o
end

print(randomCards())


