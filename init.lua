minetest.register_node("azycraft:meme", {
  description = "Piece of Trash",
  tiles = {"pixil-frame-0.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
})

minetest.register_craft({
  type = "shapeless",
	output = 'azycraft:meme 1',
	recipe = {"default:dirt","default:dirt"},
	

})

minetest.register_node("azycraft:glass", {
	description = "Blue Glass",
	tiles = {"pixil-frame-1.png"},
	drawtype = "glasslike",
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = true,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_craft({
  type = "shapeless",
	output = 'azycraft:glass 1',
	recipe = {"default:sand"},
	
})

minetest.register_node("azycraft:brick", {
  description = "Blue Brick",
  tiles = {"pixil-frame-3.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_craft({
  type = "shapeless",
	output = 'azycraft:brick 1',
	recipe = {"default:stone","default:stone"},
	

})

minetest.register_node("azycraft:bbrick", {
  description = "Blue Thin Brick",
  tiles = {"pixil-frame-2.png"},
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_craft({
  type = "shapeless",
	output = 'azycraft:bbrick 1',
	recipe = {"default:stone","default:stone"},
	

})

minetest.register_node("azycraft:eye", {
  description = "Unkown",
  tiles = {"Eye.png"},
	
	paramtype = "light",
	light_source = 13,
	sunlight_propagates = true,
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,torch=1},
})

minetest.register_craft({
  type = "shapeless",
	output = 'azycraft:eye 1',
	recipe = {"azycraft:void","azycraft:void"},

})

minetest.register_craftitem("azycraft:void", {
    description = "Void Shard",
    inventory_image = "void.png"
})

minetest.register_tool("azycraft:voiddagger", {
    description = "Void Dagger",
    inventory_image = "sword1.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=2},
    },
})

minetest.register_craft({
    output = "azycraft:voiddagger",
    recipe = {
        {"azycraft:void", ""  },
        {"azycraft:void", ""  },
        {"azycraft:voidbar",""}
    }
})

minetest.register_craftitem("azycraft:voidbar", {
    description = "Void Ingot",
    inventory_image = "voidbar.png"
})

minetest.register_craft({
    output = "azycraft:voidbar",
    recipe = {
        {"azycraft:void"}
    }
})

minetest.register_craft({
    output = "azycraft:void",
    recipe = {
        {"default:obsidian_shard","default:obsidian_shard","default:obsidian_shard"},
	{"default:obsidian_shard","default:obsidian_shard","default:obsidian_shard"},
	{"default:obsidian_shard","default:obsidian_shard","default:obsidian_shard"}
    }
})

minetest.register_node("azycraft:void_sand", {
  description = "Void Sand",
  tiles = {"void_sand.png"},
	groups = {oddly_breakable_by_hand=2},
})

minetest.register_craft({
    output = "azycraft:void_sand",
    recipe = {
        {"azycraft:void","azycraft:void","azycraft:void"},
	{"azycraft:void","default:sand","azycraft:void"},
	{"azycraft:void","azycraft:void","azycraft:void"}
    }
})

minetest.register_node("azycraft:void_dirt", {
  description = "Void Soil",
  tiles = {"void_dirt.png"},
	groups = {oddly_breakable_by_hand=2},
})

minetest.register_craft({
    output = "azycraft:void_dirt",
    recipe = {
        {"azycraft:void","azycraft:void","azycraft:void"},
	{"azycraft:void","default:dirt","azycraft:void"},
	{"azycraft:void","azycraft:void","azycraft:void"}
    }
})

minetest.register_tool("azycraft:voidsword", {
    description = "Void Sword",
    inventory_image = "voidsword.png",
    tool_capabilities = {
        full_punch_interval = 1.5,
        max_drop_level = 1,
        groupcaps = {
            crumbly = {
                maxlevel = 2,
                uses = 20,
                times = { [1]=1.60, [2]=1.20, [3]=0.80 }
            },
        },
        damage_groups = {fleshy=2},
    },
})

minetest.register_craft({
    output = "azycraft:voidsword",
    recipe = {
        {"azycraft:void","azycraft:void","azycraft:void"},
	{"azycraft:void","default:steel","azycraft:void"},
	{"azycraft:void","azycraft:void","azycraft:void"}
    }
})

minetest.register_node("azycraft:display1", {
  description = "Display Item",
  tiles = {"voidsword.png"},
	groups = {oddly_breakable_by_hand=2},
	drawtype = "torchlike",
})

minetest.register_node("azycraft:display2", {
  description = "Display Item",
  tiles = {"voidbar.png"},
	groups = {oddly_breakable_by_hand=2},
	drawtype = "torchlike",
})

minetest.register_node("azycraft:display3", {
  description = "Display Item",
  tiles = {"sword1.png"},
	groups = {oddly_breakable_by_hand=2},
	drawtype = "torchlike",
})

minetest.register_node("azycraft:display4", {
  description = "Display Item",
  tiles = {"void.png"},
	groups = {oddly_breakable_by_hand=2},
	drawtype = "torchlike",
})
