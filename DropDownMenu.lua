UIDropDownMenu_Initialize(CreateFrame("Frame", "DropDownMenu", UIParent, "UIDropDownMenuTemplate"), function(_, level, menuList)
  local info = UIDropDownMenu_CreateInfo()
  info.isNotRadio = true
  info.notCheckable = true
  info.notClickable = false

  if level == 1 then
    for category, emotes in pairs(EmotesList) do
      info.text = category
      info.hasArrow = true
      info.menuList = category
      UIDropDownMenu_AddButton(info, level)
    end
  elseif level == 2 and EmotesList[menuList] then
    for key, value in pairs(EmotesList[menuList]) do
      info.func = function()
        if ACTIVE_CHAT_EDIT_BOX ~= nil then
          ACTIVE_CHAT_EDIT_BOX:Insert(key)
        end
      end
      info.text = "|T" .. Emotes_Pack[key] .. "|t " .. key
      info.key = key
      UIDropDownMenu_AddButton(info, level)
    end
  end
end)

local LDB = LibStub:GetLibrary("LibDataBroker-1.1")
local LDI = LibStub:GetLibrary("LibDBIcon-1.0")

LDI:Register("MentalApocalypseEmotes", LDB:NewDataObject("MentalApocalypseEmotes", {
  type = "data source",
  text = "MentalApocalypseEmotes",
  icon = "Interface\\AddOns\\MentalApocalypseEmotes\\Marker",
  OnClick = function(_, button)
    if button == "LeftButton" then
      ToggleDropDownMenu(1, nil, DropDownMenu, "cursor", 0, 0)
    end
  end,
  OnTooltipShow = function(tooltip)
    tooltip:AddLine("Mental Apocalypse Emotes")
    tooltip:AddLine("|CFF0077FFLeft-Click|r to show available emotes")
  end,
}), {})