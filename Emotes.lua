function RegisterEmotes()
  EmotesList = {
    ["Christmas"] = {
      ["angryhenkx"] = {},
      ["dratnoskekwx"] = {},
      ["frenchqueenx"] = {},
      ["helmefantax"] = {},
      ["lyndpogx"] = {},
      ["virenypogx"] = {}
    },
    ["Glade"] = {
      ["gladeBASED"] = {},
      ["gladeBedge"] = {},
      ["gladeBlast"] = {},
      ["gladeDab"] = {},
      ["gladeL"] = {},
      ["gladeNOTED"] = {},
      ["gladeOK"] = {},
      ["gladePOGGERS"] = {},
      ["gladePrayge"] = {},
      ["gladeSmadge"] = {}
    },
    ["Other"] = {
      ["AngryArthur"] = {},
      ["Banankage"] = {},
      ["barry"] = {},
      ["BeautifulChicken"] = {},
      ["BidenBlast"] = {},
      ["BillCcine"] = {},
      ["BillGates"] = {},
      ["Breadclown"] = {},
      ["CongoBanan"] = {},
      ["Danbee"] = {},
      ["dawg"] = {},
      ["dddd"] = {},
      ["ddx"] = {},
      ["Dervarn"] = {},
      ["doubleBarrelMode"] = {},
      ["Drachy1"] = {},
      ["Drachy4"] = {},
      ["Dratnoskekw"] = {},
      ["ExaltedOrb"] = {},
      ["fiance"] = {},
      ["Frapps"] = {},
      ["FrenchQueen"] = {},
      ["Vernzz"] = {},
      ["xdretard"] = {},
      ["xpp"] = {}
    },
    ["Other 1"] = {
      ["Fries"] = {},
      ["GMApproved"] = {},
      ["GoodestBoy"] = {},
      ["Helmehelmut"] = {},
      ["Huh"] = {},
      ["itsjoever"] = {},
      ["Jenuxw"] = {},
      ["Koch"] = {},
      ["Lennymw"] = {},
      ["LennysBanHammer"] = {},
      ["MonkaWae"] = {},
      ["naawgripper"] = {},
      ["Obamna"] = {},
      ["ohno"] = {},
      ["Pascal"] = {},
      ["Peanuttentwo"] = {},
      ["PoroSad"] = {},
      ["RastaGates"] = {},
      ["simpvoker"] = {},
      ["SleepyGates"] = {},
      ["TWEETING"] = {},
      ["Vernz"] = {},
      ["goat"] = {}
    },
    ["Pepe Peepo"] = {
      ["1IQ"] = {},
      ["answered"] = {},
      ["incaseofjenuxuseemote"] = {},
      ["ITSCOMING"] = {},
      ["Jenux"] = {},
      ["MonkaVireny"] = {},
      ["pepehello"] = {},
      ["PepePepsi"] = {},
      ["pepereeeeeeeeeeeee"] = {},
      ["pepesadfriendhug"] = {},
      ["pepesmirk"] = {},
      ["pepetos"] = {},
      ["pepetoxic"] = {},
      ["PEPW"] = {},
      ["pogg"] = {},
      ["salutt"] = {},
      ["shhh"] = {},
      ["TripleMonkas"] = {},
      ["Vireny"] = {},
      ["YoureOut"] = {}
    },
    ["Raider"] = {
      ["angryhenk"] = {},
      ["chadtwins"] = {},
      ["finon"] = {},
      ["fok"] = {},
      ["hatlord"] = {},
      ["Helme1"] = {},
      ["Helme2"] = {},
      ["Helme3"] = {},
      ["helmefanta"] = {},
      ["HelmeSus"] = {},
      ["larresussy"] = {},
      ["lyndpog"] = {},
      ["lyndsleepy"] = {},
      ["nobleknight"] = {},
      ["SleepyDreamy"] = {},
      ["TimTheTatMan"] = {},
      ["vpog"] = {},
      ["widehelmefanta1"] = {},
      ["widehelmefanta2"] = {},
      ["widehelmefanta3"] = {},
      ["widehelmefanta"] = {["name"] = "helmefanta", ["size"] = "28:112"},
      ["widesthelmefanta"] = {["name"] = "helmefanta", ["size"] = "28:224"},
    }
  }

  Emotes_Pack = {}
  Emotes = {}

  for category, emotes in pairs(EmotesList) do
    for emote, data in pairs(emotes) do
      local fullEmotePath = "Interface\\AddOns\\MentalApocalypseEmotes\\Emotes\\" .. category .. "\\" .. (data["name"] or emote) .. ".tga:" .. (data["size"] or "28:28")
      EmotesList[category][emote] = fullEmotePath
      Emotes_Pack[emote] = fullEmotePath
      Emotes[emote] = emote
    end
  end

  MentalApocalypseEmotes = LibStub("AceAddon-3.0"):NewAddon("MentalApocalypseEmotes", "AceConsole-3.0", "AceEvent-3.0")
  Emoticons_RegisterPack(MentalApocalypseEmotes, Emotes, Emotes_Pack)
end