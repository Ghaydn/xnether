--[[
	xnether - a mod for Minetest that adds trees and grass to PilzAdam's Nether;
	not intended to be used with HybridDog's Nether, it has it's own trees and grass.
	
	Copyright ghaydn, see licence.txt
	
	Main file. 
	
--]]


xnether = {}

xnether.modname = minetest.get_current_modname()
xnether.path = minetest.get_modpath(xnether.modname)

-- Only MT version > 5 translation is upported
xnether.translation = minetest.get_translator(xnether.modname)

xnether.fireflies = minetest.settings:get_bool("xnether_enable_fireflies", true)

dofile(xnether.path .. "/tree_schematics.lua")
dofile(xnether.path .. "/trees.lua")
dofile(xnether.path .. "/grass.lua")
dofile(xnether.path .. "/ores.lua")

if xnether.fireflies then
	dofile(xnether.path .. "/fireflies.lua")
end
