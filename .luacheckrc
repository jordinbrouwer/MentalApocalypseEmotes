std = "lua51"
max_line_length = false
-- Unused arguments are common in WoW callbacks, and the emote data is declared inline.
unused_args = false
globals = {
  "AllTwitchEmoteNames",
  "Defaults",
  "Emotes",
  "EmotesList",
  "Emotes_Pack",
  "MentalApocalypseEmotes",
  "MentalApocalypseEmotesDB",
  "Panel",
  "RegisterAutoComplete",
  "RegisterDropDownMenu",
  "RegisterEmotes",
  "RegisterOptions",
  "RegisterPanel",
  "UpdateMinimapIconVisibility",
}
read_globals = {
  "ACTIVE_CHAT_EDIT_BOX",
  "CreateFrame",
  "DropDownMenu",
  "Emoticons_RegisterPack",
  "Emoticons_RenderSuggestionFN",
  "LibStub",
  "NUM_CHAT_WINDOWS",
  "Settings",
  "SetupAutoComplete",
  "ToggleDropDownMenu",
  "UIDropDownMenu_AddButton",
  "UIDropDownMenu_CreateInfo",
  "UIDropDownMenu_Initialize",
  "UIParent",
  "_G",
  "ipairs",
  "pairs",
  "table",
  "type",
}
exclude_files = {
  ".git/**",
}
