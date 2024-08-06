local autoComplete = false

local function tableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

local function RenderSuggestion(text)
    local fullEmotePath = Emotes_Pack[text]

    if fullEmotePath then
      return "|T".. fullEmotePath .."|t " .. text;
    end

    return Emoticons_RenderSuggestionFN(text)
end


function MentalApocalypseEmotes:SetAutoComplete(value)
  if value and not autoComplete then
    local i = tableLength(AllTwitchEmoteNames)
    for k, _ in pairs(Emotes_Pack) do
      AllTwitchEmoteNames[i] = k
      i = i + 1
    end
    table.sort(AllTwitchEmoteNames)
    for chatWindowIndex = 1, NUM_CHAT_WINDOWS do
      SetupAutoComplete(_G["ChatFrame" .. chatWindowIndex].editBox, AllTwitchEmoteNames, 20, {
        perWord = true,
        activationChar = ':',
        closingChar = ':',
        minChars = 2,
        fuzzyMatch = true,
        renderSuggestionFN = RenderSuggestion,
        suggestionBiasFN = function(suggestion, text)
          return 0
        end,
        interceptOnEnterPressed = true,
        addSpace = true,
        useTabToConfirm = true,
        useArrowButtons = true,
      })
    end
    autoComplete = true
  end
end

function MentalApocalypseEmotes:OnInitialize()
  MentalApocalypseEmotes:SetAutoComplete(true)
end