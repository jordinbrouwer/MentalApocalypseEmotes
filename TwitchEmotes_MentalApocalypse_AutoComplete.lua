local autoComplete = false

local function tableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function TwitchEmotes_MentalApocalypse_RenderSuggestion(text)
  local fullEmotePath = TwitchEmotes_MentalApocalypse_Emoticons_Pack[text]
  if (not fullEmotePath) then
   fullEmotePath = TwitchEmotes_defaultpack[text]
  end
  if(fullEmotePath ~= nil) then
    local size = string.match(fullEmotePath, ":(.*)")
    local pathSize = ""
    if(size ~= nil) then
      pathSize = string.gsub(fullEmotePath, size, "28:28")
    else
      pathSize = fullEmotePath .. "28:28"
    end
    return "|T".. pathSize .."|t " .. text
  end
end

function TwitchEmotes_MentalApocalypse:SetAutoComplete(value)
  if value and not autoComplete then
    local i = tableLength(AllTwitchEmoteNames)
    for k, _ in pairs(TwitchEmotes_MentalApocalypse_Emoticons_Pack) do
      AllTwitchEmoteNames[i] = k
      i = i + 1
    end
    table.sort(AllTwitchEmoteNames)
    for chatWindowIndex = 1, NUM_CHAT_WINDOWS do
      local frame = _G["ChatFrame"..chatWindowIndex]
      local editBox = frame.editBox
      local suggestionList = AllTwitchEmoteNames
      local maxButtonCount = 20
      local autoCompleteSettings = {
        perWord = true,
        activationChar = ':',
        closingChar = ':',
        minChars = 2,
        fuzzyMatch = true,
        renderSuggestionFN = TwitchEmotes_MentalApocalypse_RenderSuggestion,
        suggestionBiasFN = function(suggestion, text)
          return 0
        end,
        interceptOnEnterPressed = true,
        addSpace = true,
        useTabToConfirm = true,
        useArrowButtons = true,
      }
      SetupAutoComplete(editBox, suggestionList, maxButtonCount, autoCompleteSettings)
    end
    autoComplete = true
  end
end

function TwitchEmotes_MentalApocalypse:OnInitialize()
  TwitchEmotes_MentalApocalypse:SetAutoComplete(true)
end