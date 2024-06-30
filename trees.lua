--[[
	xnether - a mod for Minetest that adds trees and grass to PilzAdam's Nether;
	not intended to be used with HybridDog's Nether, it has it's own trees and grass.
	
	Copyright ghaydn, see licence.txt
	
	Purple and blue trees spawn on grounds of Nether.
	Thees trees don't burn and will grow only in the dark, only on netherrack.
	
--]]


local S = xnether.translation

--==============================================================================================
----- Common functions -------------------------------------------------------------------------
--==============================================================================================

-- check netherrack under and absense of light
local function can_grow(pos, tree)
	local node_under = minetest.get_node_or_nil({x = pos.x, y = pos.y - 1, z = pos.z})
	if not node_under then
		return false
	end
	if tree == "purple" then
		if node_under.name ~= "nether:rack" then
			return false
		end	
	elseif tree == "blue" then
		if node_under.name ~= "nether:rack_deep" then
			return false
		end	
	end
	
	-- must be at least one air node above
	local node_over = minetest.get_node_or_nil({x = pos.x, y = pos.y + 1, z = pos.z})
	if node_over.name ~= "air" then
		return false
	end
	
	-- Sapling won't grow under the sun, as light level is checked for the midday
	local light_level = minetest.get_node_light(pos, 0.5)
	if not light_level or light_level > 2 then
		return false
	end
	return true
end

------------------------------------------------------------------------------------------------

-- called by sapling's timer
local function grow_tree(pos, tree, offset)
	if not can_grow(pos, tree) then
		-- try a bit later again
		minetest.get_node_timer(pos):start(math.random(240, 600))
		return
	end
	if not xnether.trees[tree] then return end
	local num = math.random(3)
	minetest.remove_node(pos)
	minetest.place_schematic(
		{x = pos.x - offset, y = pos.y - 1, z = pos.z - offset}, -- position
		xnether.trees[tree][num], -- tree scheme
		0,	-- rotation (trees are symmetrical)
		nil,
		false
	)
end


--==============================================================================================
---- Node definitions --------------------------------------------------------------------------
--==============================================================================================

------------------------------------------------------------------------------------------------
---------- Saplings

minetest.register_node("xnether:purple_sapling", {
	description = S("Purple Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"xnether_purple_sapling.png"},
	inventory_image = "xnether_purple_sapling.png",
	wield_image = "xnether_purple_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = function(pos, elapsed)
		grow_tree(pos, "purple", 4)
	end,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"xnether:purple_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 6, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

------------------------------------------------------------------------------------------------

minetest.register_node("xnether:blue_sapling", {
	description = S("Blue Tree Sapling"),
	drawtype = "plantlike",
	tiles = {"xnether_blue_sapling.png"},
	inventory_image = "xnether_blue_sapling.png",
	wield_image = "xnether_blue_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	on_timer = function(pos, elapsed)
		grow_tree(pos, "blue", 2)
	end,
	selection_box = {
		type = "fixed",
		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

	on_construct = function(pos)
		minetest.get_node_timer(pos):start(math.random(300, 1500))
	end,

	on_place = function(itemstack, placer, pointed_thing)
		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
			"xnether:blue_sapling",
			-- minp, maxp to be checked, relative to sapling pos
			-- minp_relative.y = 1 because sapling pos has been checked
			{x = -3, y = 1, z = -3},
			{x = 3, y = 6, z = 3},
			-- maximum interval of interior volume check
			4)

		return itemstack
	end,
})

------------------------------------------------------------------------------------------------
--------- Trunks

minetest.register_node("xnether:purple_tree", {
	description = S("Purple Tree"),
	tiles = {"xnether_purple_tree_top.png", "xnether_purple_tree_top.png", "xnether_purple_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 1},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

------------------------------------------------------------------------------------------------

minetest.register_node("xnether:blue_tree", {
	description = S("Blue Tree"),
	tiles = {"xnether_blue_tree_top.png", "xnether_blue_tree_top.png", "xnether_blue_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 1},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

------------------------------------------------------------------------------------------------
---------- Wood planks

minetest.register_node("xnether:purple_wood", {
	description = S("Purple Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xnether_purple_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

------------------------------------------------------------------------------------------------

minetest.register_node("xnether:blue_wood", {
	description = S("Blue Wood Planks"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"xnether_blue_wood.png"},
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, wood = 1},
	sounds = default.node_sound_wood_defaults(),
})

------------------------------------------------------------------------------------------------
------------ Leaves

minetest.register_node("xnether:purple_leaves", {
	description = S("Purple Tree Leaves"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"xnether_purple_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"xnether:purple_sapling"},
				rarity = 20,
			},
			{
				items = {"xnether:purple_leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

------------------------------------------------------------------------------------------------

minetest.register_node("xnether:blue_leaves", {
	description = S("Blue Tree Leaves"),
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"xnether_blue_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, leaves = 1},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"xnether:blue_sapling"},
				rarity = 20,
			},
			{
				items = {"xnether:blue_leaves"},
			}
		}
	},
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

------------------------------------------------------------------------------------------------
--------- Fruits

minetest.register_node("xnether:fruit", {
	description = S("Nether Fruit"),
	tiles = {
		"xnether_fruit.png",
	},
	light_source = 11,
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.375, -0.25, 0.25, 0.375, 0.25},
			{-0.1875, -0.3125, 0.25, 0.1875, 0.3125, 0.3125},
			{-0.1875, -0.3125, -0.3125, 0.1875, 0.3125, -0.25},
			{0.25, -0.3125, -0.1875, 0.3125, 0.3125, 0.1875},
			{-0.3125, -0.3125, -0.1875, -0.25, 0.3125, 0.1875},
		}
	},
	groups = {
		snappy = 3, leafdecay = 1, leafdecay_drop = 1,
	},
	on_use = minetest.item_eat(-3),
})

------------------------------------------------------------------------------------------------
------ Fences

default.register_fence("xnether:fence_purple", {
	description = S("Purple Wood Fence"),
	texture = "xnether_purple_fence.png",
	inventory_image = "default_fence_overlay.png^xnether_purple_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^xnether_purple_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "xnether:purple_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_wood_defaults()
})

------------------------------------------------------------------------------------------------

default.register_fence("xnether:fence_blue", {
	description = S("Blue Wood Fence"),
	texture = "xnether_blue_fence.png",
	inventory_image = "default_fence_overlay.png^xnether_blue_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_overlay.png^xnether_blue_wood.png^" ..
				"default_fence_overlay.png^[makealpha:255,126,126",
	material = "xnether:blue_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_wood_defaults()
})

------------------------------------------------------------------------------------------------
----------- Fence Rails

default.register_fence_rail("xnether:purple_fence_rail", {
	description = S("Purple Wood Fence Rail"),
	texture = "xnether_purple_fence_rail.png",
	inventory_image = "default_fence_rail_overlay.png^xnether_purple_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_rail_overlay.png^xnether_purple_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "xnether:purple_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_wood_defaults()
})

------------------------------------------------------------------------------------------------

default.register_fence_rail("xnether:blue_fence_rail", {
	description = S("Blue Wood Fence Rail"),
	texture = "xnether_blue_fence_rail.png",
	inventory_image = "default_fence_rail_overlay.png^xnether_blue_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	wield_image = "default_fence_rail_overlay.png^xnether_blue_wood.png^" ..
				"default_fence_rail_overlay.png^[makealpha:255,126,126",
	material = "xnether:blue_wood",
	groups = {choppy = 2, oddly_breakable_by_hand = 2},
	sounds = default.node_sound_wood_defaults()
})

------------------------------------------------------------------------------------------------
---------- Postlights

default.register_mesepost("xnether:purple_mese_post_light", {
	description = S("Purple Wood Mese Post Light"),
	texture = "xnether_purple_fence.png",
	material = "xnether:purple_wood",
})

------------------------------------------------------------------------------------------------

default.register_mesepost("xnether:blue_mese_post_light", {
	description = S("Blue Wood Mese Post Light"),
	texture = "xnether_blue_fence.png",
	material = "xnether:blue_wood",
})


--==============================================================================================
----- Crafting ---------------------------------------------------------------------------------
--==============================================================================================


minetest.register_craft({
	output = "xnether:purple_wood 4",
	recipe = {
		{"xnether:purple_tree"},
	}
})

minetest.register_craft({
	output = "xnether:blue_wood 4",
	recipe = {
		{"xnether:blue_tree"},
	}
})


--==============================================================================================
----- Decorations ------------------------------------------------------------------------------
--==============================================================================================

-- must depend on nether settings
local decoration_ceiling = nether.DEPTH_CEILING - 128
local decoration_floor   = nether.DEPTH_FLOOR   + 128

------------------------------------------------------------------------------------------------

for i = 1, 3 do
	
	minetest.register_decoration({
		name = "Purple Tree "..i,
		deco_type = "schematic",
		place_on = "nether:rack",
		sidelen = 16,
		--fill_ratio = 0.001,
		---[[
		noise_params = {
			offset = 0.0005,
			scale = 0.01,
			spread = {x = 240, y = 240, z = 240},
			seed = 2776,
			octaves = 3,
			persist = 0.33
		},--]]
		biomes = {"nether_caverns"},
		y_max = decoration_ceiling,
		y_min = decoration_floor,
		schematic = xnether.trees.purple[i],
		flags = "place_center_x,place_center_z,all_floors",
		place_offset_y=1
	})

------------------------------------------------------------------------------------------------

	minetest.register_decoration({
		name = "Blue Tree "..i,
		deco_type = "schematic",
		place_on = "nether:rack_deep",
		sidelen = 16,
		--fill_ratio = 0.001,
		---[[
		noise_params = {
			offset = 0.0005,
			scale = 0.01,
			spread = {x = 240, y = 240, z = 240},
			seed = 2776,
			octaves = 3,
			persist = 0.33
		},--]]
		biomes = {"nether_caverns"},
		y_max = decoration_ceiling,
		y_min = decoration_floor,
		schematic = xnether.trees.blue[i],
		flags = "place_center_x,place_center_z,all_floors",
		place_offset_y=1
	})
end
