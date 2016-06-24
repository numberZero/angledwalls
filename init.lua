-- [MOD] Angled Walls [angledwalls] [1.0] by TumeniNodes 6-24-2016

angledwalls = {}

--Register angledwalls.
--Node will be called angledwalls:angled_wall_<subname>

function angledwalls.register_angled_wall(subname, recipeitem, groups, images, description, sounds)
	groups.angledwall = 1
minetest.register_node(":angledwalls:angled_wall" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0, 0.5, 0},
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			{-0.3125, -0.5, -0.1875, 0.3125, 0.5, 0.1875},
			{-0.1875, -0.5, -0.3125, 0.1875, 0.5, 0.3125},
			{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375},
			{-0.0625, -0.5, -0.4375, 0.0625, 0.5, 0.4375},
			{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125},
			{-0.4375, -0.5, -0.0625, 0.4375, 0.5, 0.0625},
		}
	}
})
end

-- Register angledwalls.
-- Node will be called angledwalls:low_angled_wall_<subname>

function angledwalls.register_low_angled_wall(subname, recipeitem, groups, images, description, sounds)
	groups.lowangledwall = 1
minetest.register_node(":angledwalls:low_angled_wall" .. subname, {
	description = description,
	drawtype = "nodebox",
	tiles = images,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	node_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0, 0, 0},
			{-0.25, -0.5, -0.25, 0.25, 0, 0.25},
			{-0.3125, -0.5, -0.1875, 0.3125, 0, 0.1875},
			{-0.1875, -0.5, -0.3125, 0.1875, 0, 0.3125},
			{-0.125, -0.5, -0.375, 0.125, 0, 0.375},
			{-0.0625, -0.5, -0.4375, 0.0625, 0, 0.4375},
			{-0.375, -0.5, -0.125, 0.375, 0, 0.125},
			{-0.4375, -0.5, -0.0625, 0.4375, 0, 0.062},
		}
	}
})
end

-- Angled wall/low wall registration function.
-- Nodes will be called angledwalls:{angled_wall,low_angled_wall}_<subname>

function angledwalls.register_angled_wall_and_low_angled_wall(subname, recipeitem, groups, images,desc_angled_wall, desc_low_angled_wall, sounds)
	angledwalls.register_angled_wall(subname, recipeitem, groups, images, desc_angled_wall, sounds)
	angledwalls.register_low_angled_wall(subname, recipeitem, groups, images, desc_low_angled_wall, sounds)
end


-- Register angled stairs and slabs

angledwalls.register_angled_wall_and_low_angled_wall("wood", "default:wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_wood.png"},
		"Wooden Angled Wall",
		"Wooden Low Angled Wall",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("junglewood", "default:junglewood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_junglewood.png"},
		"Junglewood Angled Wall",
		"Junglewood Low Angled Wall",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("pine_wood", "default:pine_wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_pine_wood.png"},
		"Pine Wood Angled Wall",
		"Pine Wood Low Angled Wall",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("acacia_wood", "default:acacia_wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_acacia_wood.png"},
		"Acacia Wood Angled Wall",
		"Acacia Wood Low Angled Wall",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("aspen_wood", "default:aspen_wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_aspen_wood.png"},
		"Aspen Wood Angled Wall",
		"Aspen Wood Low Angled Wall",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("stone", "default:stone",
		{cracky = 3},
		{"default_stone.png"},
		"Stone Angled Wall",
		"Stone Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("cobble", "default:cobble",
		{cracky = 3},
		{"default_cobble.png"},
		"Cobblestone Angled Wall",
		"Cobblestone Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("stonebrick", "default:stonebrick",
		{cracky = 3},
		{"default_stone_brick.png"},
		"Stone Brick Angled Wall",
		"Stone Brick Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("desert_stone", "default:desert_stone",
		{cracky = 3},
		{"default_desert_stone.png"},
		"Desertstone Angled Wall",
		"Desertstone Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("desert_cobble", "default:desert_cobble",
		{cracky = 3},
		{"default_desert_cobble.png"},
		"Desert Cobblestone Angled Wall",
		"Desert Cobblestone Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("desert_stonebrick", "default:desert_stonebrick",
		{cracky = 3},
		{"default_desert_stone_brick.png"},
		"Desert Stone Brick Angled Wall",
		"Desert Stone Brick Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("sandstone", "default:sandstone",
		{crumbly = 1, cracky = 3},
		{"default_sandstone.png"},
		"Sandstone Angled Wall",
		"Sandstone Low Angled Wall",
		default.node_sound_stone_defaults())
		
angledwalls.register_angled_wall_and_low_angled_wall("sandstonebrick", "default:sandstonebrick",
		{cracky = 2},
		{"default_sandstone_brick.png"},
		"Sandstone Brick Angled Wall",
		"Sandstone Brick Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("obsidian", "default:obsidian",
		{cracky = 1, level = 2},
		{"default_obsidian.png"},
		"Obsidian Angled Wall",
		"Obsidian Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("obsidianbrick", "default:obsidianbrick",
		{cracky = 1, level = 2},
		{"default_obsidian_brick.png"},
		"Obsidian Brick Angled Wall",
		"Obsidian Brick Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("brick", "default:brick",
		{cracky = 3},
		{"default_brick.png"},
		"Brick Angled Wall",
		"Brick Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("steelblock", "default:steelblock",
		{cracky = 1, level = 2},
		{"default_steel_block.png"},
		"Steel Block Angled Wall",
		"Steel Block Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("copperblock", "default:copperblock",
		{cracky = 1, level = 2},
		{"default_copper_block.png"},
		"Copper Block Angled Wall",
		"Copper Block Low_angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("bronzeblock", "default:bronzeblock",
		{cracky = 1, level = 2},
		{"default_bronze_block.png"},
		"Bronze Block Angled Wall",
		"Bronze Block Low Angled Wall",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall("goldblock", "default:goldblock",
		{cracky = 1},
		{"default_gold_block.png"},
		"Gold Block Angled Wall",
		"Gold Block Low Angled Wall",
		default.node_sound_stone_defaults())

minetest.register_node("angledwalls:cobbleglass", {
	description = "angledwalls cobble glass",
	drawtype = "nodebox",
	tiles = {"cobbleglass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:cobbleobsidianglass", {
	description = "angledwalls cobble obsidian glass",
	drawtype = "nodebox",
	tiles = {"cobbleobsidianglass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})
