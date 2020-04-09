-- Ore

	minetest.register_ore({
		ore_type        = "blob",
		ore             = "azycraft:void_dirt",
		wherein         = {"default:stone"},
		clust_scarcity  = 50 * 50 * 50,
		clust_size      = 3,
		y_min           = -31,
		y_max           = 31000,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
		biomes = {"taiga", "snowy_grassland", "grassland", "coniferous_forest",
			"deciduous_forest", "deciduous_forest_shore", "savanna", "savanna_shore",
			"rainforest", "rainforest_swamp", "floatland_grassland",
			"floatland_coniferous_forest","void_plains"}
	})


-- Boimes

minetest.register_biome({
        name = "void_plains",
        node_dust = ":",
        node_top = "azycraft:void_grass_dirt",
        depth_top = 1,
        node_filler = "azycraft:void_dirt",
        depth_filler = 1,
        node_stone = ":",
        node_water_top = "",
        depth_water_top = 10,
        node_water = "",
        node_river_water = "",
        node_riverbed = "azycraft:void_dirt",
        depth_riverbed = 2,
        y_min = 1,
        y_max = 31000,
        heat_point = 10,
        humidity_point = 35,
})
minetest.register_biome({
	name = "void_plains_ocean",
	node_dust = ":",
	node_top = "azycraft:void_grass_dirt",
	depth_top = 1,
	node_filler = "azycraft:void_dirt",
	depth_filler = 3,
	node_stone = ":",
	node_water_top = "",
	depth_water_top = 10,
	node_water = "",
	node_river_water = "",
	node_riverbed = "azycraft:void_sand",
	depth_riverbed = 2,
	y_min = -112,
	y_max = 4,
	heat_point = 40,
	humidity_point = 35,
})
minetest.register_biome({
	name = "void_desert",
	node_dust = ":",
	node_top = "azycraft:void_sand",
	depth_top = 1,
	node_filler = "azycraft:void_sand",
	depth_filler = 3,
	node_stone = ":",
	node_water_top = "",
	depth_water_top = 10,
	node_water = "",
	node_river_water = "",
	node_riverbed = "azycraft:void_sand",
	depth_riverbed = 2,
	y_min = 5,
	y_max = upper_limit,
	heat_point = 82,
	humidity_point = 16,
})