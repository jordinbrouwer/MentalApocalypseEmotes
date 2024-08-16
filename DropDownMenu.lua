function RegisterDropDownMenu()
    local LDI = LibStub:GetLibrary("LibDBIcon-1.0")
    local LDB = LibStub:GetLibrary("LibDataBroker-1.1")

    local function InitializeDropdownMenu()
        local frame = CreateFrame("Frame", "DropDownMenu", UIParent, "UIDropDownMenuTemplate")
        UIDropDownMenu_Initialize(frame, function(_, level, menuList)
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
                    UIDropDownMenu_AddButton(info, level)
                end
            end
        end)
    end

    function UpdateMinimapIconVisibility()
        if MentalApocalypseEmotesDB.MinimapData["hide"] then
            LDI:Hide("MentalApocalypseEmotes")
        else
            LDI:Show("MentalApocalypseEmotes")
        end
    end

    local broker = LDB:NewDataObject("MentalApocalypseEmotes", {
        type = "launcher",
        text = "MentalApocalypseEmotes",
        icon = "Interface\\AddOns\\MentalApocalypseEmotes\\Marker",
        OnClick = function(_, button)
            if button == "LeftButton" then
                InitializeDropdownMenu()
                ToggleDropDownMenu(1, nil, DropDownMenu, "cursor", 0, 0)
            elseif button == "RightButton" then
                MentalApocalypseEmotesDB.MinimapData["hide"] = not MentalApocalypseEmotesDB.MinimapData["hide"]
                UpdateMinimapIconVisibility()
            end
        end,
        OnTooltipShow = function(tooltip)
            tooltip:AddLine("Mental Apocalypse Emotes")
            tooltip:AddLine("|CFF0077FFLeft-Click|r to show available emotes")
            tooltip:AddLine("|CFF0077FFRight-Click|r to toggle minimap icon visibility")
        end,
    })

    LDI:Register("MentalApocalypseEmotes", broker, MentalApocalypseEmotesDB.MinimapData)

    UpdateMinimapIconVisibility()
end