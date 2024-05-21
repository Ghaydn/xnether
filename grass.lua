--[[
	xnether - a mod for Minetest that adds trees and grass to PilzAdam's Nether;
	not intended to be used with HybridDog's Nether, it has it's own trees and grass.
	
	Copyright ghaydn, see licence.txt
	
	Grass and flowers grow everywhere on netherrack
	
--]]


local S = xnether.translation


local flood_grass = function(pos, oldnode, newnode)
	local itemname = oldnode.name
	local def = minetest.registered_nodes[itemname]
	minetest.add_item(pos, ItemStack(def.drop))
end

------------------------------------------------------------------------------------------------

for _, Color in ipairs({"Purple", "Blue"}) do
	local color = Color:lower()
	for i = 1, 3 do
		minetest.register_node("xnether:grass_"..color.."_" .. i, {
			description = S(Color.." Nether Grass"),
			drawtype = "plantlike",
			light_source = 2,
			waving = 1,
			tiles = {"xnether_grass_" .. color .. "_" .. i .. ".png"},
			inventory_image = "xnether_grass_" .. color .. "_" .. i .. ".png",
			wield_image = "xnether_grass_" .. color .. "_" .. i .. ".png",
			paramtype = "light",
			sunlight_propagates = true,
			walkable = false,
			buildable_to = true,
			drop = "xnether:grass_" .. color .. "_1",
			floodable = true,
			on_flood = flood_grass,
			groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1},
			sounds = default.node_sound_leaves_defaults(),
			selection_box = {
				type = "fixed",
				fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
			},
		})
	end
	
	for i = 1, 2 do
		
		
		minetest.register_node("xnether:flower_"..color.."_" .. i, {
			description = S(Color.." Nether Flower"),
			drawtype = "plantlike",
			light_source = 12,
			damage_per_second = 1,
			waving = 1,
			tiles = {"xnether_flower_" .. color .. "_" .. i .. ".png"},
			inventory_image = "xnether_flower_" .. color .. "_" .. i .. ".png",
			wield_image = "xnether_flower_" .. color .. "_" .. i .. ".png",
			paramtype = "light",
			sunlight_propagates = true,
			walkable = false,
			buildable_to = true,
			floodable = true,
			on_flood = flood_grass,
			groups = {snappy = 3, flora = 1, attached_node = 1, grass = 1},
			sounds = default.node_sound_leaves_defaults(),
			selection_box = {
				type = "fixed",
				fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, -3 / 16, 6 / 16},
			},
		})
	end
end

------------------------------------------------------------------------------------------------

local decoration_ceiling = nether.DEPTH_CEILING - 128
local decoration_floor   = nether.DEPTH_FLOOR   + 128

------------------------------------------------------------------------------------------------

minetest.register_decoration({
		name = "xnether:grasses_purple",
		deco_type = "simple",
		place_on = {"nether:rack"},
		sidelen = 4,
		noise_params = {
			offset = 0.7,
			scale = 4.0,
			spread = {x = 16, y = 16, z = 16},
			seed = 2776,
			octaves = 1,
			persist = 0.0,
			flags = "absvalue, eased"
		},
		biomes = {"nether_caverns"},
		y_max = decoration_ceiling,
		y_min = decoration_floor,
		decoration = {
			"xnether:grass_purple_1",
			"xnether:grass_purple_2",
			"xnether:grass_purple_3",
	},
})

------------------------------------------------------------------------------------------------

minetest.register_decoration({
		name = "xnether:flowers_purple",
		deco_type = "simple",
		place_on = {"nether:rack"},
		sidelen = 4,
		noise_params = {
			offset = -0.01,
			scale = 0.05,
			spread = {x = 16, y = 16, z = 16},
			seed = 2776,
			octaves = 1,
			persist = 0.0,
			flags = "absvalue, eased"
		},
		biomes = {"nether_caverns"},
		y_max = decoration_ceiling,
		y_min = decoration_floor,
		decoration = {
			"xnether:flower_purple_1",
			"xnether:flower_purple_2",
	},
})

------------------------------------------------------------------------------------------------

minetest.register_decoration({
		name = "xnether:grasses_blue",
		deco_type = "simple",
		place_on = {"nether:rack_deep"},
		sidelen = 4,
		noise_params = {
			offset = 0.7,
			scale = 4.0,
			spread = {x = 16, y = 16, z = 16},
			seed = 2776,
			octaves = 1,
			persist = 0.0,
			flags = "absvalue, eased"
		},
		biomes = {"nether_caverns"},
		y_max = decoration_ceiling,
		y_min = decoration_floor,
		decoration = {
			"xnether:grass_blue_1",
			"xnether:grass_blue_2",
			"xnether:grass_blue_3",
	},
})

------------------------------------------------------------------------------------------------

minetest.register_decoration({
		name = "xnether:flowers_blue",
		deco_type = "simple",
		place_on = {"nether:rack_deep"},
		sidelen = 4,
		noise_params = {
			offset = -0.01,
			scale = 0.05,
			spread = {x = 16, y = 16, z = 16},
			seed = 2776,
			octaves = 1,
			persist = 0.0,
			flags = "absvalue, eased"
		},
		biomes = {"nether_caverns"},
		y_max = decoration_ceiling,
		y_min = decoration_floor,
		decoration = {
			"xnether:flower_blue_1",
			"xnether:flower_blue_2",
	},
})

