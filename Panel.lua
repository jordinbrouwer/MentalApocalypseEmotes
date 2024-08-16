function RegisterPanel()
	Panel = Settings.RegisterVerticalLayoutCategory("Mental Apocalypse Emotes")

	local defaultValue = Defaults.MinimapData["hide"]
	local function GetValue()
		return MentalApocalypseEmotesDB.MinimapData["hide"]
	end
	local function SetValue(value)
		MentalApocalypseEmotesDB.MinimapData["hide"] = value
		UpdateMinimapIconVisibility()
	end
	local setting = Settings.RegisterProxySetting(Panel, "MentalApocalypseEmotesDB.MinimapData['hide']", type(defaultValue), "Minimap icon hidden", defaultValue, GetValue, SetValue)
	Settings.CreateCheckbox(Panel, setting, tooltip)

	Settings.RegisterAddOnCategory(Panel)
end