local itemStackSizeMultiplier = settings.startup["Noxys_StackSizeMultiplier-multiplier"].value

-- Items
for _, dat in pairs(data.raw) do
		for _,item in pairs(dat) do
		if item.stack_size and type(item.stack_size) == "number" and item.stack_size > 1 then
			item.stack_size = item.stack_size * itemStackSizeMultiplier
		end
	end
end

--Ammo
for _, ammo in pairs(data.raw.ammo) do
	if ammo.magazine_size and type(ammo.magazine_size) == "number" and ammo.magazine_size > 1 then
		ammo.magazine_size = ammo.magazine_size * itemStackSizeMultiplier
	end
end

-- Module
for _, modu in pairs(data.raw["module"]) do
	modu.stack_size = modu.stack_size * itemStackSizeMultiplier
end

-- Capsule 
for _, caps in pairs(data.raw["capsule"]) do
	caps.stack_size = caps.stack_size * itemStackSizeMultiplier
end
