--[[
	xnether - a mod for Minetest that adds trees and grass to PilzAdam's Nether;
	not intended to be used with HybridDog's Nether, it has it's own trees and grass.
	
	Copyright ghaydn, see licence.txt
	
	Nether gold and nether mese that spawns inside netherrack
	
--]]

local S = xnether.translation

------------------------------------------------------------------------------------------------

minetest.register_node("xnether:rack_with_gold", {
	description = S("Nether Gold"),
	tiles = {"nether_rack.png^default_mineral_gold.png"},
	groups = {cracky = 2, level = 2},
	drop = "default:gold_lump",
	sounds = default.node_sound_stone_defaults(),
})

------------------------------------------------------------------------------------------------

minetest.register_node("xnether:rack_deep_with_mese", {
	description = S("Nether Mese"),
	tiles = {"nether_rack_deep.png^default_mineral_mese.png"},
	groups = {cracky = 1, level = 2},
	drop = "default:mese_crystal_fragment 4",
	sounds = default.node_sound_stone_defaults(),
})

------------------------------------------------------------------------------------------------


local ore_ceiling = nether.DEPTH_CEILING - 128
local ore_floor   = nether.DEPTH_FLOOR   + 128

------------------------------------------------------------------------------------------------

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xnether:rack_with_gold",
	wherein        = "nether:rack",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 7,
	clust_size     = 5,
	y_max          = ore_ceiling,
	y_min          = ore_floor,
})

------------------------------------------------------------------------------------------------

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "xnether:rack_deep_with_mese",
	wherein        = "nether:rack_deep",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 7,
	clust_size     = 5,
	y_max          = ore_ceiling,
	y_min          = ore_floor,
})
