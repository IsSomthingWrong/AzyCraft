function default.grow_papyrus(pos, node)
	pos.y = pos.y - 1
	local name = minetest.get_node(pos).name
	if name ~= "azycraft:void_grass_dirt" and name ~= "azycraft:void_dirt" then
		return
	end
end


minetest.register_abm({
	label = "Grass spread",
	nodenames = {"azycraft:void_dirt"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"default:snow",
	},
	interval = 1,
	chance = 1,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end
		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "default:snow" then
			minetest.set_node(pos, {name = "azycraft:void_dirt"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "azycraft:void_grass_dirt"})
		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "azycraft:void_grass_dirt"})
		end
	end
})

minetest.register_craftitem("azycraft:function_block", {
    description = "function",
    inventory_image = "none-2.png"
})
