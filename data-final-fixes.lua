local itemStackSizeMultiplier = settings.startup["Noxys_StackSizeMultiplier-multiplier"].value
local max, min = math.max, math.min

local ignore_by_type = {
	["blueprint"]           = true,
	["blueprint-book"]      = true,
	["deconstruction-item"] = true,
	["selection-tool"]      = true,
	["copy-paste-tool"]     = true,
	["item-with-inventory"] = true,
	["upgrade-item"]        = true,
	["armor"]               = true,
	["spidertron-remote"]   = true,
}

local ignora_by_name = {
--	["satellite"] = true,
}

if mods["space-exploration"] then
  ignora_by_name["rocket-fuel"] = true
end

local function is_stackable(item)
	if settings.startup["Noxys_StackSizeMultiplier-ignoreonestacks"].value then
		if item.stack_size and item.stack_size == 1 then return false end
	end
	if not item.flags then return true end
	if type(item.flags) ~= "table" then return true end
	for _,v in pairs(item.flags) do
		if v == "not-stackable" then return false end
	end
	return true
end

for _, dat in pairs(data.raw) do
	for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" and is_stackable(item) then
			if not ignore_by_type[item.type] and not ignora_by_name[item.name] and (item.stackable == nil or item.stackable) then
				item.stack_size = max(1, min(2147483647, item.stack_size * itemStackSizeMultiplier))
			end
		end
	end
end

if settings.startup["Noxys_StackSizeMultiplier-tweakbots"].value then
	for _,v in pairs(data.raw["construction-robot"]) do
		v.max_payload_size = max(1, min(2147483647, v.max_payload_size * itemStackSizeMultiplier))
	end
end

if settings.startup["Noxys_StackSizeMultiplier-tweaklogibots"].value then
	for _,v in pairs(data.raw["logistic-robot"]) do
		v.max_payload_size = max(1, min(2147483647, v.max_payload_size * itemStackSizeMultiplier))
	end
end
