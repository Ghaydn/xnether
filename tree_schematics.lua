--[[
	xnether - a mod for Minetest that adds trees and grass to PilzAdam's Nether;
	not intended to be used with HybridDog's Nether, it has it's own trees and grass.
	
	Copyright ghaydn, see licence.txt

	This file describes the form of trees.
	
--]]


local _ = {name = "air", param1 = 000}
local F = {name = "xnether:fruit", param1 = 255}

local T = {name = "xnether:purple_tree", param1 = 255}
local L = {name = "xnether:purple_leaves", param1 = 255}

local Y = {name = "xnether:blue_tree", param1 = 255}
local J = {name = "xnether:blue_leaves", param1 = 255}

xnether.trees = {
	purple = {
		{	
			size = {x = 9, y = 8, z = 9},
			--tree 1
			data = {
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				L,T,L,_,_,_,L,T,L,
				L,F,L,_,_,_,L,F,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,L,L,_,L,L,_,_,
				L,L,T,L,_,L,T,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,L,T,L,T,L,_,_,
				_,_,L,L,_,L,L,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				
				_,_,_,_,T,_,_,_,_,
				_,_,_,_,T,_,_,_,_,
				_,_,_,_,T,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,L,T,L,T,L,_,_,
				_,_,L,L,_,L,L,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,L,L,_,L,L,_,_,
				L,L,T,L,_,L,T,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				L,F,L,_,_,_,L,F,L,
				L,T,L,_,_,_,L,T,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
			}
		},
		{	
			size = {x = 9, y = 8, z = 9},
			--tree 2
			data = {
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,F,L,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,L,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,L,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				L,L,L,L,L,L,L,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,T,_,_,_,_,
				_,_,_,_,T,_,_,_,_,
				_,_,_,_,T,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,L,T,L,T,L,_,_,
				L,F,T,L,L,L,T,F,L,
				L,T,L,_,_,_,L,T,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,L,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				L,L,L,L,L,L,L,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,L,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,F,L,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
			}
		},
		{	
			size = {x = 9, y = 7, z = 9},
			--tree 3
			data = {
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,F,L,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,L,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,_,L,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				
				_,_,_,_,T,_,_,_,_,
				_,_,_,_,T,_,_,_,_,
				_,_,_,L,T,L,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,L,L,L,_,_,_,
				_,_,L,T,L,T,L,_,_,
				_,_,L,L,_,L,L,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,L,L,_,L,L,_,_,
				L,L,T,L,_,L,T,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				L,F,L,_,_,_,L,F,L,
				L,T,L,_,_,_,L,T,L,
				L,L,L,_,_,_,L,L,L,
				
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				_,_,_,_,_,_,_,_,_,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
				L,L,L,_,_,_,L,L,L,
			}
		},
	},
	blue = {
		
		{	
			size = {x = 5, y = 11, z = 5},
			--tree 1
			data = {
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,J,J,J,
				J,J,J,J,J,
				_,_,_,_,_,
				_,_,_,_,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,J,J,J,_,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,Y,J,J,
				J,F,Y,F,J,
				_,J,J,J,_,
				_,J,J,J,_,
				
				_,_,Y,_,_,
				_,_,Y,_,_,
				_,_,Y,_,_,
				_,J,Y,J,_,
				_,J,Y,J,_,
				_,_,Y,_,_,
				_,_,Y,_,_,
				J,Y,Y,Y,J,
				J,Y,Y,Y,J,
				_,J,Y,J,_,
				_,J,J,J,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,J,J,J,_,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,Y,J,J,
				J,F,Y,F,J,
				_,J,J,J,_,
				_,J,J,J,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,J,J,J,
				J,J,J,J,J,
				_,_,_,_,_,
				_,_,_,_,_,
				
			}
		},
		{	
			size = {x = 5, y = 11, z = 5},
			--tree 2
			data = {
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,J,J,J,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,F,Y,F,J,
				J,J,Y,J,J,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,J,J,J,_,
				_,J,J,J,_,
				_,_,J,_,_,
				
				_,_,Y,_,_,
				_,_,Y,_,_,
				_,_,Y,_,_,
				J,Y,Y,Y,J,
				J,Y,Y,Y,J,
				_,J,Y,J,_,
				_,_,Y,_,_,
				_,_,Y,_,_,
				_,J,Y,J,_,
				_,J,Y,J,_,
				_,J,J,J,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,F,Y,F,J,
				J,J,Y,J,J,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,J,J,J,_,
				_,J,J,J,_,
				_,_,J,_,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,J,J,J,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				
			}
		},
		{	
			size = {x = 5, y = 11, z = 5},
			--tree 3
			data = {
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,J,J,J,
				J,J,J,J,J,
				_,_,_,_,_,
				_,_,_,_,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,J,J,J,_,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,Y,F,Y,J,
				J,Y,J,Y,J,
				_,J,J,J,_,
				_,J,J,J,_,
				
				_,_,Y,_,_,
				_,_,Y,_,_,
				_,_,Y,_,_,
				_,J,Y,J,_,
				_,J,Y,J,_,
				_,_,Y,_,_,
				_,_,Y,_,_,
				J,F,Y,F,J,
				J,J,Y,J,J,
				_,J,Y,J,_,
				_,J,J,J,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,J,J,J,_,
				_,J,J,J,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,Y,F,Y,J,
				J,Y,J,Y,J,
				_,J,J,J,_,
				_,J,J,J,_,
				
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				_,_,_,_,_,
				J,J,J,J,J,
				J,J,J,J,J,
				_,_,_,_,_,
				_,_,_,_,_,
				
			}
		}
	}
}