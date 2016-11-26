--[[
local frame = CreateFrame("Frame", "changeZone");
frame:RegisterEvent("ZONE_CHANGED");
local function eventHandler(self, event, ...)
	DEFAULT_CHAT_FRAME:AddMessage("Zone changed.");
end
frame:SetScript("OnEvent", eventHandler);
]]--

local frame = CreateFrame("Frame", "changeZone");
frame:RegisterEvent("CURRENT_SPELL_CAST_CHANGED");
local function eventHandler(self, event, ...)
	DEFAULT_CHAT_FRAME:AddMessage("Casting has begun.");
end
frame:SetScript("OnEvent", eventHandler);

local function Test()
	DEFAULT_CHAT_FRAME:AddMessage("Test");
end

Test();