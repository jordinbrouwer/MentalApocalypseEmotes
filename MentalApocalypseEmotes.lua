local frame = CreateFrame("FRAME")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "MentalApocalypseEmotes" then
        RegisterOptions()
        RegisterEmotes()
        RegisterDropDownMenu()
        RegisterAutoComplete()
        RegisterPanel()
    end
end)
