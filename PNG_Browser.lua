--function make_window()
time=os.time
gameroot="/ig3d_mac_xcode/"
DealMode=true
goodDeck={}

evilDeck={}
goodpoints=1
evilpoints=1
gCurrentPlayer=good
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
CultDescriptions={
startADLT="The story begins on a sleepless night...",
acreepytreesADLT="creepy bent and ghostly trees",

adarkmemoriesADLT="dark memories and old wrongs",

adeathADLT="unwholesome smell of death",

adiggingADLT="strange unearthly diggings",

adreamADLT="horrible recurring dream",

afogADLT="murky dank fog",

agibbousmoonADLT="an icy gibbous moon",

agraffitiADLT="obscene and abhorrent graffiti",

ahowlsADLT="unearthly howls in the night",

amistsADLT="eerie drifting mists",

aolADtownADLT="old decaying town",

arainADLT="dreary cold rain",

aratsADLT="loathesome fat rats",

ascreamsADLT="horrifying screams",

astarsADLT="sky of haunting stars",

athunderADLT="clap of thunder and lightning",

atrainADLT="mournful train whistle",

awindADLT="fierc rise in the windw",

c1apperationE1E2="a frightful apparition",

c1cannibalE1E2="a ghoulish cannibal",

c1convictE1E2="a brutish convict",

c1cowledfigureE1E2="a sinister black cowled figure",

c1creatureE1E2="a demonic creature",

c1hagE1E2="a reeking grotesque hag",

c1lunaticE1E2="an escaped lunatic",

c1oncefriendlyE1E2="a once friendly acquaintenance",

c1undeadE1E2="stinking rotten  zombie",

c2antiquarianADL="a well known antiquarian",

c2beggarADL="a wretched beggar",

c2drunkADL="a drunken derelict",

c2mangydogADL="a mangy dog",

c2oldmanADL="a terrible old man",

c2policeADL="a grim police officer",

c2preistADL="a horror stricken priest",

c2scampADL="a mischievous tough scamp",

c2sobbingwomanADL="a sobbing young woman",
dcloudDE1E2S="ominous black cloud",

dfloppingDE1E2S="half real, half imagined flopping",

dgatewayDE1E2S="beckoning cosmic gateway",

dmanifestationsDE1E2S="hideous manifestations",

doozeDE1E2S="slithering mass of revolting black ooze",

dpassageDE1E2S="whirling dimensional passage",

dpossessionDE1E2S="alien limb possession",
e1deathe1="DEATH",

e2EscapeADLST="ESCAPE",
lcemetartADT="the foreboding cemetery",

lchurchADT="the crumbling church",

lgladeADT="the dreaded glade",

lhouseADT="the shunned house",

lmansionADT="the abandoned mansion",

lmausoleumADT="the feared mauseleum",

ltownADT="the bad part of town",
oamuletAC1C2DT="hypnotic amulet",

odeadbodyAC1C2DT="dead body",

oexoticthingAC1C2DT="exotic thing",

oforbiddenbookAC1C2DT="forbidden book",

ogunAC1C2DT="lost gun",

oknifeAC1C2DT="bloody knife",

ostatueAC1C2DT="stone statue",
pace1="Just As",

pace2="Then",

pace3="Beyond",

pace4="Next",

pace5="Before Long",

pace6="Meanwhile",

pace7="But soon",

pace8="Mysteriously",

pace9="Afterwards",

pace10="nd",

pace11="Unexpectedly",

pace12="While",

pace13="Later",

pace14="Suddently",

pace15="Surprisingly",
sdawn="Dawn spreads the message to end all the nighttime activities.",

sfever="Fever broguht on by the evil festering sight ends the late outing",

snight="The clock warns of the late hour and ends this night's stroll.",

ssleep="An overwhelming but troubled sleep ends the nights adventure.",

sweak="A sudden weakness and feeling of fainting ends the nocturnal walk.",


tchaseC1C2ST="clamor of a chase",

tclusterC1C2ST="a solemn cluster of figures",

tconversationC1C2ST="gruesome eavesdropped conversation",

tcreakinghingesC1C2ST="creaking hinges",

tdiggingC1C2ST="unusual sounds of digging",

tfollowerC1C2ST="shadowy follower",

tfootstepsC1C2ST="echoing footsteps",

thiddenshapeC1C2ST="beastly half seen, half hidden shape",

tilluminationC1C2ST="pale illumination",

tsilhouetteC1C2ST="frenzied silhouette",

tsomberprocessionC1C2ST="somber procession",

tsuspiciousC1C2ST="suspicious persons",

ttracksC1C2ST="fiendish tracks",

tunnaturalC1C2ST="glimpse of something unnatural"
}
CultRoot = "/ig3d_mac_xcode/Data/Fluid/DarkCults/"
CultImages=CultRoot.."DarkCult_Images/"
cbrowsertable={}
gFoldersFound={}
gFilesFound={}
math.randomseed(os.time())
functionslist={}
pickedlist={{}}
tablesfiles={}
q = "\""
empty="  "

boxcount=0
--dirandsubdirs getfilelist getAllFoldersandFiles
function dirandsubdirs(tPath)
	for file in lfs.dir(tPath) do
		if string.sub(file, 1,1) ~= "."    then
		local f = tPath..'/'..file
            	local attr = lfs.attributes(f)
            	assert (type(attr) == "table")
             		if attr.mode == "directory" then 
           		local a={file, "directory"}
			table.insert(gFoldersFound, f)
			end 
		end
	end
	
end

function getfilelist(tPath)
	for file in lfs.dir(tPath) do
 		if string.sub(file, 1,1) ~= "."    then
        local f = tPath..'/'..file
        local attr = lfs.attributes(f)
		assert (type(attr) == "table")
        	if attr.mode == "file" and string.sub(file, -4,-1)==".png" then 
            local a={file, "file"}  
           f=string.gsub(f,"//","/") 
            table.insert(gFilesFound, f) 
            end  
 		end          
	end
	return gFilesFound
end


function getAllFoldersandFiles(tPath)
gFoldersFound={}
gFilesFound={}
dirandsubdirs(tPath)
local n = #gFoldersFound
for i =1,n,1 do dirandsubdirs(gFoldersFound[i]) end
gFilesFound={}
if gFoldersFound[1]== nil then gFoldersFound[1] = tPath end
for i = 1,#gFoldersFound,1 do getfilelist(gFoldersFound[i]) end	
return gFilesFound
end
--listFiles
 
function listFiles(path)
local fileList={}
--print(path)
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." then
            local f = path.."/"..file
           -- print(f)
            local attr = lfs.attributes(f)
            assert (type(attr) == "table")
             if attr.mode == "file" then 
             if file ~= ".DS_Store"  then
             table.insert(fileList, file)
             end
           -- print(file)
           end   
        end
     end
    return fileList
end
--load all the tables in the path
-- 


getAllFoldersandFiles(CultImages)
gLastBrowserControlClick=time()
gLastSelection=-1

gBrowserPath=gameroot.."Data/Images/"
gBrowserFiles={}
gBrowserPath = CultImages
function listPNGFiles()
gBrowserFiles={}

    pngFileBrowser:clear()
    for file in lfs.dir(gBrowserPath) do
        if string.sub(file, 1,1)~="." or file==".." then
            local f = gBrowserPath..'/'..file
            local attr = lfs.attributes (f)
            assert (type(attr) == "table")
             if attr.mode == "file" and string.sub(file, -4,-1)==".png" then 
             	local a={file, "file"}
             	table.insert(gBrowserFiles, a)
             	pngFileBrowser:add(file)
             end   
           if attr.mode == "directory" then 
           local a={file, "directory"}
             table.insert(gBrowserFiles, a)
             pngFileBrowser:add(file.."     ->")
	   end  
        end
     end
     
end
function updatePNGPreviewBox(name,which)

	fltk.fl_register_images()
	local a=gBrowserPath 
	local b=string.sub(name, 1,-5)..".png"
	--resultsBrowser:add(a..b)
	local img = Fl_Shared_Image.get(a..b)
	pngPreviewBox1:color(40)
	mw=180
	mh=240
	
	if img==nil then
		img=Fl_Shared_Image.get(gameroot.."Data/Images/Colors/white.png")
		
	end
	img:w(mw)
	img:h(mh)
	--img:setsize(mw,mh)
	if which == nil then which = boxcount end
		if which == 1 then 
		pngPreviewBox1:image(img:copy(mw,mh))
		pngPreviewBox1:w(mw)
		pngPreviewBox1:h(mh)
		pngPreviewBox1:redraw()
		
		end
		
		
		if which == 2 then 
			pngPreviewBox2:image(img:copy(mw,mh))
		pngPreviewBox2:w(mw)
		pngPreviewBox2:h(mh)
		pngPreviewBox2:redraw()
		
		end
		
	
		if which == 3 then 
			pngPreviewBox3:image(img:copy(mw,mh))
		pngPreviewBox3:w(mw)
		pngPreviewBox3:h(mh)
		pngPreviewBox3:redraw()
		end
		
		
		if which == 4 then 
			pngPreviewBox4:image(img:copy(mw,mh))
		pngPreviewBox4:w(mw)
		pngPreviewBox4:h(mh)
		pngPreviewBox4:redraw()
		end
		
		
		if which == 5 then 
			pngPreviewBox5:image(img:copy(mw,mh))
		pngPreviewBox5:w(mw)
		pngPreviewBox5:h(mh)
		pngPreviewBox5:redraw()
		end
		
	
		if which == 6 then 
			pngPreviewBox6:image(img:copy(mw,mh))
		pngPreviewBox6:w(mw)
		pngPreviewBox6:h(mh)
		pngPreviewBox6:redraw()
		end
		if boxcount >= 6 then boxcount=0 end
PNGBrowserNew:redraw()		
	
end
function pngLoad(w)
	if pngFileBrowser:value()==0 then return end
	local theFile=gBrowserFiles[tonumber(pngFileBrowser:value())]
	if theFile[2]=="directory" then return end
	
	local c=#(gameroot)+1
	local newObj={}
	table.insert(gObjects, newObj)
	local n=#gObjects
	loadTexture( string.sub(gBrowserPath..theFile[1],c,-1))
	gCatchTexturePath = string.sub(gBrowserPath..theFile[1],c,-1)
	if ParticleBrowser ~= nil then updateTexture() end
	PNGBrowserNew:make_current()
end
function browserControlDoubleClicked(w)
	--
	local theFile=gBrowserFiles[tonumber(w:value())]
	if theFile[2]=="directory" then
		if theFile[1]==".." then 
			gBrowserPath=goDirsUp(gBrowserPath, 1)
		else
			gBrowserPath=gBrowserPath..theFile[1].."/"
		end
		listPNGFiles()
	end
end
function browserControlClicked(w)
	if w:value()==0 then return end
	local theFile=gBrowserFiles[tonumber(w:value())]
	if theFile[2]=="file" then
	boxcount=boxcount+1
     if boxcount >= 7 then boxcount = 1 end
     --resultsBrowser:add(theFile[1])
		
	updatePNGPreviewBox(theFile[1])
	end
	
	local t=time()
	
	if t-gLastBrowserControlClick < 0.4 and w:value()==gLastSelection then
		browserControlDoubleClicked(w)
		gLastBrowserControlClick=0
	else
		gLastBrowserControlClick=time()
	end
	gLastSelection=w:value()
	
end
function randompics()
myfiles=getAllFoldersandFiles(CultImages)
local myfiles={}
n=#gFilesFound
resultsBrowser:clear()
 myfiles=gFilesFound
	for i=1,6,1 do
		if n~=nil and n ~= 0 then 
		r=math.random(1,n)
		local theFile=myfiles[r]
		theFile=string.sub(theFile,string.len(gBrowserPath),-1)
		sff=string.sub(theFile,2,-1)
		
		sf=string.find(sff,"/")
		if sf ~= nil then 
		sf=sf+2
		shortname=string.sub(theFile,sf,-5)
	end
		
		--table.remove(myfiles,r)
		updatePNGPreviewBox(theFile,i)
		
		
	
		end
	end
	PNGBrowserNew:redraw()

end
Story={{}}
Story.Atmosphere={0,0}
Story.Characterevil={1,2}
Story.Characterneutral={2,0}
Story.Endcard={0,10}
Story.Escape={5,0}
Story.Danger={1,3}
Story.Location={3,2}
Story.Object={1,1}
Story.Save={0,0}
Story.Threat={1,1}

function scorepoints(s)
p=1
if gCurrentPlayer=="evil" then p=2 end
if s=="a" then pt=Story.Atmosphere[p] end
if s=="c1" then pt=Story.Characterevil[p] end
if s=="c2" then pt=Story.Characterneutral[p] end
if s=="d" then pt=Story.Danger[p] end
if s=="e1" then pt=Story.Endcard[p] end
if s=="l" then pt=Story.Location[p] end
if s=="o" then pt=Story.Object[p] end
if s=="p" then pt=0 end
if s=="s" then pt=Story.Save[p] end
if s=="start" then pt=0 end
if s=="t" then pt=Story.Threat[p] end

if gCurrentPlayer=="evil" then
 evilpoints = evilpoints + pt
else
goodpoints = goodpoints + pt
end
goodScore:value(goodpoints)
evilScore:value(evilpoints)
end
theDeck={}
goodDeck={}

function shuffleDeck()
theDeck={}
myfiles=getAllFoldersandFiles(CultImages)
n=#gFilesFound
for i=#myfiles,1,-1 do
r=math.random(1,#myfiles)
o=myfiles[r]
table.remove(myfiles,r)
table.insert(theDeck,o)
end
return theDeck
end
shuffleDeck()

evilDeck={}

function dealGood()
DealMode=true
o=theDeck[#theDeck]
table.remove(theDeck,#theDeck)
theFile=string.sub(o,string.len(gBrowserPath),-1)
sff=string.sub(theFile,2,-1)
sf=string.find(sff,"/")
if sf ~= nil then 
sf=sf+2
shortname=string.sub(theFile,sf,-5)
goodBrowser:add(shortname)
table.insert(goodDeck,{shortname,o})
end
end

function dealEvil()
DealMode=true
o=theDeck[#theDeck]
table.remove(theDeck,#theDeck)
theFile=string.sub(o,string.len(gBrowserPath),-1)
sff=string.sub(theFile,2,-1)
sf=string.find(sff,"/")
if sf ~= nil then 
sf=sf+2
shortname=string.sub(theFile,sf,-5)
evilBrowser:add(shortname)
table.insert(evilDeck,{shortname,o})
end
return o
end

function discardGood()
DealMode=false
end

function dealAll()
gn=#goodDeck
for i = gn,5,1 do
dealGood()
gn=#goodDeck
en=#evilDeck
	if en <= 4 then 
	dealEvil()
	end
end

end
function evilCard(n)
gCurrentPlayer="evil"
s=evilDeck[n][1]
p=evilDeck[n][2]
theFile=string.sub(p,string.len(gBrowserPath),-1)
if DealMode== true then
boxcount=boxcount+1
updatePNGPreviewBox(theFile,boxcount)

tname=string.gsub(s,"_","")
resultsBrowser:add(CultDescriptions[tname])

ss=string.sub(s,1,1)
scorepoints(ss)
else
graveBrowser:add(s)
end
evilBrowser:clear()
table.remove(evilDeck,n)
for i = 1,#evilDeck,1 do
o=evilDeck[i][1]
evilBrowser:add(o)
end
evilBrowser:redraw()
gCurrentPlayer="good"
end





function goodpick(w)
gCurrentPlayer="good"
if w:value() == nil or w:value() == 0 then return end
n=w:value()
s=goodDeck[n][1]
p=goodDeck[n][2]
tname=string.gsub(s,"_","")
resultsBrowser:add(CultDescriptions[tname])
theFile=string.sub(p,string.len(gBrowserPath),-1)
if DealMode== true then
boxcount=boxcount+1
updatePNGPreviewBox(theFile,boxcount)
--resultsBrowser:add(s)
ss=string.sub(s,1,1)
scorepoints(ss)
 
else
graveBrowser:add(s)
end
goodBrowser:clear()
table.remove(goodDeck,n)

for i = 1,#goodDeck,1 do
o=goodDeck[i][1]
goodBrowser:add(o)
end
goodBrowser:redraw()

evilCard(math.random(1,#evilDeck))
end

function evilPick(w)
if w:value() == nil or w:value() == 0 then return end
n=w:value()
evilCard(n)
end
do PNGBrowserNew= fltk:Fl_Double_Window(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "PNG Browser")
PNGBrowserNew:label(gLabelTable[#gLabelTable])
PNGBrowserNew:callback(wClose)
PNGBrowserNew:resize(6,50,1117,441)
Fl_Group:current():resizable(PNGBrowserNew)
PNGBrowserNew:size_range(266,555,1640,1640)
--PNGBrowserNew:show()
do pngPreviewBox1= fltk:Fl_Box(0,0,0,0,"")
pngPreviewBox1:resize(5,2,180,240)
pngPreviewBox1:box(fltk.FL_FLAT_BOX)
pngPreviewBox1:color(40)
pngPreviewBox1:align(16)
end

do pngFileBrowser= fltk:Fl_Browser(0,0,0,0,"")
pngFileBrowser:callback(browserControlClicked)
pngFileBrowser:resize(950,280,147,95)
pngFileBrowser:type(2)
pngFileBrowser:labelsize(10)
pngFileBrowser:when(3)
pngFileBrowser:textsize(10)
end

do widget= fltk:Fl_Button(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "Load Image")
widget:label(gLabelTable[#gLabelTable])
widget:callback(pngLoad)
widget:resize(950,255,145,20)
widget:labelsize(10)
end

do resultsBrowser= fltk:Fl_Browser(0,0,0,0,"")
resultsBrowser:resize(785,250,315,175)
resultsBrowser:type(2)
resultsBrowser:labelsize(10)
resultsBrowser:when(3)
resultsBrowser:textsize(10)
end

do pngPreviewBox2= fltk:Fl_Box(0,0,0,0,"")
pngPreviewBox2:resize(188,2,180,240)
pngPreviewBox2:box(fltk.FL_FLAT_BOX)
pngPreviewBox2:color(40)
pngPreviewBox2:align(16)
end

do pngPreviewBox3= fltk:Fl_Box(0,0,0,0,"")
pngPreviewBox3:resize(370,2,180,240)
pngPreviewBox3:box(fltk.FL_FLAT_BOX)
pngPreviewBox3:color(40)
pngPreviewBox3:align(16)
end

do pngPreviewBox4= fltk:Fl_Box(0,0,0,0,"")
pngPreviewBox4:resize(552,2,180,240)
pngPreviewBox4:box(fltk.FL_FLAT_BOX)
pngPreviewBox4:color(40)
pngPreviewBox4:align(16)
end

do pngPreviewBox5= fltk:Fl_Box(0,0,0,0,"")
pngPreviewBox5:resize(735,2,180,240)
pngPreviewBox5:box(fltk.FL_FLAT_BOX)
pngPreviewBox5:color(40)
pngPreviewBox5:align(16)
end

do pngPreviewBox6= fltk:Fl_Box(0,0,0,0,"")
pngPreviewBox6:resize(917,2,180,240)
pngPreviewBox6:box(fltk.FL_FLAT_BOX)
pngPreviewBox6:color(40)
pngPreviewBox6:align(16)
end

do randompicsbtn= fltk:Fl_Button(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "random")
randompicsbtn:label(gLabelTable[#gLabelTable])
randompicsbtn:callback(randompics)
randompicsbtn:resize(710,405,68,20)
end

do goodBrowser= fltk:Fl_Browser(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "LIFE")
goodBrowser:label(gLabelTable[#gLabelTable])
goodBrowser:callback(goodpick)
goodBrowser:resize(30,270,170,115)
goodBrowser:type(2)
goodBrowser:labelsize(10)
goodBrowser:align(1)
goodBrowser:when(3)
goodBrowser:textsize(10)
end

do evilBrowser= fltk:Fl_Browser(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "DEATH")
evilBrowser:label(gLabelTable[#gLabelTable])
evilBrowser:callback(evilPick)
evilBrowser:resize(370,270,190,115)
evilBrowser:type(2)
evilBrowser:labelsize(10)
evilBrowser:align(1)
evilBrowser:when(3)
evilBrowser:textsize(10)
end

do goodtakebtn= fltk:Fl_Button(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "Deal")
goodtakebtn:label(gLabelTable[#gLabelTable])
goodtakebtn:callback(dealAll)
goodtakebtn:resize(290,390,68,20)
goodtakebtn:labelsize(13)
end

do graveBrowser= fltk:Fl_Browser(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "Grave")
graveBrowser:label(gLabelTable[#gLabelTable])
graveBrowser:resize(200,270,170,115)
graveBrowser:type(2)
graveBrowser:labelsize(10)
graveBrowser:align(1)
graveBrowser:when(3)
graveBrowser:textsize(10)
end

do goodtakebtn= fltk:Fl_Button(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "Discard")
goodtakebtn:label(gLabelTable[#gLabelTable])
goodtakebtn:callback(discardGood)
goodtakebtn:resize(200,390,65,20)
goodtakebtn:labelsize(13)
end

do goodScore= fltk:Fl_Output(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "score:")
goodScore:label(gLabelTable[#gLabelTable])
goodScore:resize(80,391,110,24)
end

do evilScore= fltk:Fl_Output(0,0,0,0,"")
if gLabelTable==nil then gLabelTable={} end
table.insert(gLabelTable, "score:")
evilScore:label(gLabelTable[#gLabelTable])
evilScore:resize(80,416,110,24)
end
end
PNGBrowserNew:show()

PNGBrowserNew:show()



listPNGFiles()
--end
Fl:run()
