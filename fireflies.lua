--[[
	xnether - a mod for Minetest that adds trees and grass to PilzAdam's Nether;
	not intended to be used with HybridDog's Nether, it has it's own trees and grass.
	
	Copyright ghaydn, see licence.txt
	
	Fireflies are particles that fly everywhere in Nether and set your FPS down
	
--]]

local S = xnether.translation

local firefly_ceiling = nether.DEPTH_CEILING - 128
local firefly_floor   = nether.DEPTH_FLOOR   + 128

------------------------------------------------------------------------------------------------

minetest.register_abm({
	label = "Nether Fireflies",
	nodenames = {"nether:rack", "nether:rack_deep", "nether:geodeite"},
	neighbors = {"air"},
	interval = 1.0,
	chance = 500,
	min_y = firefly_floor,
	max_y = firefly_ceiling,
	action = function(pos, node, active_object_count, active_object_count_wider)
		
		--[[
		-- lots of colorized particles can cause MT to crash
		-- Uncomment this block and texture colorizing below to turn them on and test
		
		local color = tostring(math.random(0, 60)) .. ":"
						..tostring(math.random(0, 100)) .. ":"
						..tostring(math.random(-50, 50))
		--]]
						
		minetest.add_particle({
			pos = pos,
			velocity = {x=math.random(-8,8), y=math.random(-8,8), z=math.random(-8,8)},
			acceleration = {x=0, y=0, z=0},
			expirationtime = 3,
			size = 1.0,
			collisiondetection = false,
			collision_removal = false,
			object_collision = false,
			vertical = true,
			texture = "nether_particle.png",--.."^[colorizehsl:"..color,
			glow = 4,
		})
	end
})
