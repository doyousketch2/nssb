--Nssb

local path = minetest.get_modpath("nssb")
--dofile(path.."/tunnels.lua")
dofile(path.."/caverns.lua")
--Materials
minetest.register_node("nssb:mossy_stone_brick", {
	description = "Mossy Stone Brick",
	tiles = {"mossy_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:very_mossy_stone_brick", {
	description = "Very Mossy Stone Brick",
	tiles = {"very_mossy_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:mossy_stone_column", {
	description = "Mossy Stone Column",
	tiles = {"mossy_stone_column.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:stone_column", {
	description = "Stone Column",
	tiles = {"stone_column.png"},
	is_ground_content = false,
	groups = {cracky=2, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:marine_stone", {
	description = "Seastone",
	tiles = {"marine_stone.png"},
	is_ground_content = false,
	groups = {cracky=1, stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:marine_brick", {
	description = "Seastone Brick",
	tiles = {"marine_brick.png"},
	is_ground_content = false,
	groups = {stone=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:marine_meselamp", {
	description = "Sea Meselamp",
	tiles = {"marine_meselamp.png"},
	is_ground_content = false,
	groups = {cracky=3},
	drop = "",
	light_source = 15,
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("nssb:mantis_clay", {
	description = "Mantis Clay",
	tiles = {"mantis_clay.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:hardened_mantis_clay", {
	description = "Hardened Mantis Clay",
	tiles = {"hard_mantis_clay.png"},
	is_ground_content = false,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:ant_stone", {
	description = "Ant Stone",
	tiles = {"ant_stone.png"},
	is_ground_content = false,
	groups = {cracky=1, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:vine", {
	description = "Vine",
	drawtype = "signlike",
	tiles = {"climbing_plant.png"},
	inventory_image = {"vine.png"},
	walkable = false,
	climbable = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	selection_box = {type="wallmounted"},
	legacy_wallmounted = true,
	groups = {flammable=3, snappy = 3},
	sounds = default.node_sound_leaves_defaults()
})


minetest.register_node("nssb:liana", {
	description = "Liana",
	drawtype = "plantlike",
	inventory_image = {"liana.png"},
	tiles = {"liana.png"},
	paramtype = "light",
	walkable = false,
	climbable = true,
	groups = {flammable=3, snappy = 3},
	sounds = default.node_sound_leaves_defaults()
})

minetest.register_node("nssb:vertical_web", {
	description = "Vertical Web",
	inventory_image = "vertical_web.png",
	tile_images = {"vertical_web.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "nssm:web",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "nssb:vertical_web",
	liquid_alternative_source = "nssb:vertical_web",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_node("nssb:web_cone_up", {
	description = "Web Cone Up",
	inventory_image = "web_cone_up.png",
	tile_images = {"web_cone_up.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "nssm:web",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "nssb:web_cone_up",
	liquid_alternative_source = "nssb:web_cone_up",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_node("nssb:web_cone_down", {
	description = "Web Cone Down",
	inventory_image = "web_cone_down.png",
	tile_images = {"web_cone_down.png"} ,
    drawtype = "plantlike",
	paramtype = "light",
	walkable = false,
	pointable = true,
	diggable = true,
	buildable_to = false,
	drop = "nssm:web",
	drowning = 0,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_range= 0,
	liquid_alternative_flowing = "nssb:web_cone_down",
	liquid_alternative_source = "nssb:web_cone_down",
	liquid_viscosity = 20,
	groups = {flammable=2, snappy=1, liquid=1},
})

minetest.register_craft({
	output = 'nssb:marine_meselamp',
	recipe = {
		{'default:glass', 'bucket:bucket_water', 'default:glass'},
		{'default:glass', 'default:mese_crystal', 'default:glass'},
		{'default:glass', 'bucket:bucket_water', 'default:glass'},
	}
})

minetest.register_node("nssb:web_cocoon", {
	description = "Web Cocoon",
	tiles = {"web_cocoon.png"},
	drop = {
         max_items = 1,
         items = {
			{
                 items = {'node "nssm:spider_leg" 2'},
                 rarity = 4
             },
			  {
                 items = {'node "nssm:web 1'},
                 rarity = 4
             },
             {
                 items = {'node "nssm:ant_sword" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:sun_sword" 1'},
                 rarity = 100
             },
			 {
                 items = {'node "nssm:night_sword" 1'},
                 rarity = 100
             },
			 {
                 items = {'node "nssm:spear_ant" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:spear_mantis" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:spear_manticore" 1'},
                 rarity = 22
             },
			 {
                 items = {'node "nssm:spear_little_ice_tooth" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:spear_duck_beak" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "default:sword_wood" 1'},
                 rarity = 14
             },
			 {
                 items = {'node "default:sword_steel" 1'},
                 rarity = 20
             },{
                 items = {'node "default:sword_mese" 1'},
                 rarity = 20
             },{
                 items = {'node "default:axe_bronze" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:raw_scrausics_wing" 2'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:nssm:mantis_claw" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "default:axe_mese" 1'},
                 rarity = 20
             },
             {
                 items = {'node "nssm:mantis_sword" 1'},
				 rarity = 20
             },
			 {
                 items = {'node "default:axe_steel" 1'},
                 rarity = 20
             },
			 {
                 items = {'node "nssm:crab_light_mace" 1'},
				 rarity = 20
             },
			 {
                 items = {'node "nssm:masticone_fang_sword" 1'},
				 rarity = 20
             }
         }
    },
	is_ground_content = false,
	groups = {snappy=1, flammable=2},
})

--schematichs generation

function nssb_register_buildings(
	build,			-- name of the schematic
	rand,			-- 1/rand is the probability of the spawning of the schematic if the place found is acceptable
	posschem,		-- the block on which the schematic need to be to spawn
	down,			-- useful in finding flat surfaces, down indetify the x and z coordinates of a block 1 under posschem
	downblock,		-- the block that is necessary to find in down to place the schematic
	above,			-- when you need to place the schem under something (water, air, jungleleaves...) above is the number of blocks above posschem
	aboveblock,		-- the name of this block above above-times posschem
	radius,			-- the radius in which the function search for the "near" block
	near,			-- the block that is necessary to spawn the schem in the radius
	side,			-- the mesure of the side of the schematic, it is necessary to put the dirt under it
	underground,	-- if true the schematic need to spawn underground
	height,			-- under this heigh the schematic can spawn. If nil the schematic can spawn everywhere underground
	ice,			-- if true fill the space under the schem with ice and not with dirt as standard
	exact_height) 	-- exact_height=exact_eight under the surface in the correct place

	minetest.register_on_generated(function(minp, maxp, seed)
		if underground==false then
			local i, j, k
			local flag=0
			local posd
			i = math.random(minp.x, maxp.x)
			k = math.random(minp.z, maxp.z)
			for j=minp.y,maxp.y do
				local pos1 = {x=i, y=j, z=k}
				local pos2 = {x=i+down, y=j-1, z=k+down}
				local pos3 = {x=i, y=j+above, z=k}
				local n = minetest.env:get_node(pos1).name
				local u = minetest.env:get_node(pos2).name
				local d = minetest.env:get_node(pos3).name
				if (downblock==nil) then
					u = downblock
				end
				if (aboveblock==nil) then
					d = aboveblock
				end
				if n== posschem and u== downblock and d==aboveblock and flag==0 and math.random(1,rand)==1 then
					if minetest.find_node_near(pos3, radius, near) then
							minetest.place_schematic(pos1, minetest.get_modpath("nssb").."/schems/".. build ..".mts", "0", {}, true)
							--minetest.chat_send_all("Added schematic in "..(minetest.pos_to_string(pos1)))
							posd=pos1
							flag=1
					end
				end
			end
			--Puts dirt/ice under the schematic to fill the space under it
			if flag==1 and side>0 then
				for dx = 0,side do
					for dz = 0,side do
						local dy=posd.y-1
						local f = {x = posd.x+dx, y=dy, z=posd.z+dz}
						local fg = minetest.env:get_node(f).name
						if ice == false then
							while fg=="air" do
								minetest.env:set_node(f, {name="default:dirt"})
								f.y=f.y-1
								fg = minetest.env:get_node(f).name
							end
						else
							while fg=="air" do
									minetest.env:set_node(f, {name="default:ice"})
									f.y=f.y-1
									fg = minetest.env:get_node(f).name
							end
						end
					end
				end
			end
		else	--underground==true
			if minp.y<0 then
				--minetest.chat_send_all("Posmin: "..(minetest.pos_to_string(minp)).." Posmax: "..(minetest.pos_to_string(maxp)))
				local i, jj, k, j
				local flag=0

				i = math.random(minp.x, maxp.x)
				k = math.random(minp.z, maxp.z)
				jj = math.random(minp.y, maxp.y)
				if height~=nil then
					if height>maxp.y then
						j = jj
					elseif height>minp.y and height<maxp.y then
						j = math.random(minp.y, height)
					else
						return
					end
				else
					if jj>0 then
						j = math.random(minp.y, 0)
					end
				end
				local pos1={x=i, y=j, z=k}
				local n = minetest.env:get_node(pos1).name
				if minetest.find_node_near(pos1, radius, "default:lava_source")or flag==1 then
					return
				else
					if n==posschem and math.random(1,rand)==1 then
						minetest.place_schematic(pos1, minetest.get_modpath("nssb").."/schems/".. build ..".mts", "0", {}, true)
						flag=1
						--minetest.chat_send_all("Added schematic in "..(minetest.pos_to_string(pos1)))
					end
				end
			end
		end
	end)
end

nssb_register_buildings ('spiaggiagranchius', 2, "default:sand", 3, "default:sand", 2, "air",  3, "air", 0, false, nil, false, false)
nssb_register_buildings ('acquagranchius', 3, "default:sand", 3, "default:sand", 12,"default:water_source", 3, "default:water_source", 0, false, nil, false, false)
nssb_register_buildings ('ooteca', 6, "default:dirt_with_grass", 3, "default:dirt", 2, "air", 24, "default:tree", 8, false, nil, false, false)
nssb_register_buildings ('minuscolaooteca', 6, "default:dirt_with_grass",3 , "default:dirt", 2, "air", 24, "default:tree", 2, false, nil, false, false)
nssb_register_buildings ('piccolaooteca', 6, "default:dirt_with_grass", 2, "default:dirt", 2, "air", 24, "default:tree", 4, false, nil, false, false)
nssb_register_buildings ('arcate', 8, "default:sand", 3, "default:sand", 13, "default:water_source", 3, "default:water_source",0, false, nil, false, false)
nssb_register_buildings ('grandepiramide', 8, "default:dirt", 3, "default:dirt", 20, "default:water_source", 3, "default:water_source", 0, false, nil, false, false)
nssb_register_buildings ('collina', 5, "default:dirt_with_grass", 3, "default:dirt", 2, "air", 3, "air", 12, false, nil, false, false)
nssb_register_buildings ('megaformicaio', 7, "default:dirt_with_grass", 4, "default:dirt", 2, "air", 3, "air", 25, false, nil, false, false)
nssb_register_buildings ('antqueenhill', 8, "default:dirt_with_grass", 4, "default:dirt", 2, "air", 3, "air", 21, false, nil, false, false)
nssb_register_buildings ('rovine1', 4, "default:dirt_with_grass", 3, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
--nssb_register_buildings ('rovine2', 1, "default:stone", 0, "air",  0, "air", 24, "default:jungletree", 5, true, -8, false, false)
nssb_register_buildings ('rovine3', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine4', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine5', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine6', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine7', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine8', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine9', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('rovine10', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('bozzoli', 4, "default:dirt_with_grass", 1, "default:dirt",  2, "air", 8, "default:jungletree", 10, false, nil, false, false)
nssb_register_buildings ('blocohouse', 4, "default:stone", 0, "air",  0, "air", 3, "default:stone", 5, true, -10, false, false)
nssb_register_buildings ('bigblocohouse', 4, "default:stone", 0, "air",  0, "air", 3, "default:stone", 5, true, -20, false, false)
nssb_register_buildings ('blocobiggesthouse', 4, "default:stone", 0, "air",  0, "air", 3, "default:stone", 5, true, -30, false, false)
nssb_register_buildings ('picco', 12, "default:desert_sand", 1, "default:desert_stone",  1, "air", 3, "default:desert_sand", 10, false, nil, false, false)
nssb_register_buildings ('piccoghiaccio', 12, "default:dirt_with_snow", 1, "default:dirt",  1, "air", 3, "default:dirt_with_snow", 10, false, nil, true, false)
nssb_register_buildings ('icehall', 8, "default:dirt_with_snow", 1, "default:dirt",  1, "air", 3, "default:dirt_with_snow", 30, false, nil, true, false)
nssb_register_buildings ('piccomoonheron', 8, "default:dirt_with_snow", 1, "default:dirt",  1, "air", 3, "default:dirt_with_snow", 3, false, nil, true, false)
nssb_register_buildings ('doppiopiccoghiaccio', 11, "default:dirt_with_snow", 1, "default:dirt",  1, "air", 3, "default:dirt_with_snow", 7, false, nil, true, false)
nssb_register_buildings ('doppiopiccosabbia', 11, "default:desert_sand", 1, "default:desert_stone",  1, "air", 3, "default:desert_sand", 7, false, nil, false, false)
nssb_register_buildings ('piccoscrausics', 8, "default:desert_sand", 1, "default:desert_stone",  1, "air", 3, "default:desert_sand", 3, false, nil, false, false)
nssb_register_buildings ('fossasand', 1, "default:desert_sand", 1, "default:desert_stone",  1, "air", 3, "default:desert_sand", 16, false, nil, false, false)
nssb_register_buildings ('portal', 6, "default:dirt_with_grass", 2, "default:dirt", 2, "air", 24, "default:tree", 4, false, nil, false, false)

--Eggs

function nssb_register_eggs (
name, -- name of the mobs and the eggs
descr, -- Description of the mob and eggs
int, -- time interval between each birth
wide, -- the radius in wich mobs are generated
troppi, -- maximun number of mobs spawned
neigh, -- block that need to be near for spawning the mobs
night, --if only at night
lumin) --luminosity parameter of the egg_block

	minetest.register_node("nssb:".. name .."_eggs", {
		description = descr .." Eggs",
		tiles = {name .."_eggs.png"},
		light_source = lumin,
		is_ground_content = false,
		groups = {choppy=1},
	})


	minetest.register_abm({
	nodenames = {"nssb:".. name .."_eggs"},
	neighbors = {neigh},
	interval = int,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos1 = {x=pos.x+math.random(-wide,wide), y=pos.y+0.5, z=pos.z+math.random(-wide,wide)}
		local n = minetest.env:get_node(pos1).name
		if n ~= "air" and n ~= "default:water_source" then
			return
		end
		local count = 0

		local objects = minetest.env:get_objects_inside_radius(pos, 12)
		for _,obj in ipairs(objects) do
			count = count +1
			--minetest.chat_send_all("Count: "..count)
		end

		local t = minetest.get_timeofday()
		--minetest.chat_send_all("Time of day: "..t)
		if (t>=0.75 and t<=1) or (t>=0 and t<=0.25) or night==false then
			if count < troppi then
				minetest.add_entity(pos1, "nssm:" .. name)
			end
		end
	end
	})

end

nssb_register_eggs ('ant_worker', 'Ant Worker', 16, 2, 4, "air", false, 5)
nssb_register_eggs ('ant_soldier', 'Ant Soldier', 16, 2, 4, "air", false, 5)
nssb_register_eggs ('larva', 'Larva', 16, 2, 4, "air", false, 5)
nssb_register_eggs ('crab', 'Crab', 18, 2, 4, "default:sand", false, 5)
nssb_register_eggs ('black_widow', 'Black Widow', 18, 2, 4, "air", false, 5)
nssb_register_eggs ('uloboros', 'Uloboros', 18, 2, 4, "air", false, 5)
nssb_register_eggs ('daddy_long_legs', 'Daddy Long Legs', 18, 2, 4, "air", false, 5)
nssb_register_eggs ('xgaloctopus', 'Xgaloctopus', 18, 2, 4, "default:water_source", false, 5)
nssb_register_eggs ('bloco', 'Bloco', 14, 2, 4, "default:gravel", false, 5)
nssb_register_eggs ('icesnake', 'Icesnake', 18, 2, 4, "default:ice", false, 5)
nssb_register_eggs ('snow_biter', 'Snowbiter', 18, 2, 4, "default:ice", false, 5)
nssb_register_eggs ('scrausics', 'Scrausics', 18, 2, 4, "air", false, 5)
nssb_register_eggs ('moonheron', 'Moonheron', 18, 2, 4, "air", true, 0)

function nssb_register_eggboss (
name, -- name of the mobs and the eggs
descr, -- Description of the mob and eggs
int, -- time interval between each birth
wide, -- the radius in wich mobs are generated
troppi, -- maximun number of mobs spawned
neigh, -- block that need to be near for spawning the mobs
night, --if only at night
lumin) --luminosity parameter of the egg_block

	minetest.register_node("nssb:".. name .."_eggboss", {
		description = descr .." Eggs",
		tiles = {name .."_eggs.png"},
		light_source = lumin,
		is_ground_content = false,
		groups = {choppy=1},
	})


	minetest.register_abm({
	nodenames = {"nssb:".. name .."_eggboss"},
	neighbors = {neigh},
	interval = int,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		local pos1 = {x=pos.x+math.random(-wide,wide), y=pos.y+0.5, z=pos.z+math.random(-wide,wide)}
		local n = minetest.env:get_node(pos1).name
		if n ~= "air" and n ~= "default:water_source" then
			return
		end
		local count = 0

		local objects = minetest.env:get_objects_inside_radius(pos, 12)
		for _,obj in ipairs(objects) do
			count = count +1
			--minetest.chat_send_all("Count: "..count)
		end

		local t = minetest.get_timeofday()
		--minetest.chat_send_all("Time of day: "..t)
		if (t>=0.75 and t<=1) or (t>=0 and t<=0.25) or night==false then
			if count < troppi then
				minetest.add_entity(pos1, "nssm:" .. name)
			end
		end
	end
	})

end
--Bosses of the eggs:
nssb_register_eggboss ('phoenix', 'Phoenix', 900, 10, 1, "air", false, 15)
nssb_register_eggboss ('tarantula', 'Tarantula', 900, 2, 1, "air", false, 5)
nssb_register_eggboss ('night_master', 'Night Master', 900, 10, 1, "air", true, 0)
nssb_register_eggboss ('ant_queen', 'Ant Queen', 900, 10, 1, "air", false, 5)
nssb_register_eggboss ('icelamander', 'Icelamander', 900, 10, 1, "air", false, 5)


minetest.register_node("nssb:giant_sandworm_eggs", {
		description = "Giant Sandworm Egg",
		tiles = {"giant_sandworm_eggs.png"},
		is_ground_content = false,
		groups = {choppy=1},
	})

minetest.register_abm({
	nodenames = {"nssb:giant_sandworm_eggs"},
	neighbors = {"default:desert_stone"},
	interval = 1,
	chance = 1,
	action = function(pos, node)
		local pos1 = {x=pos.x, y=pos.y+1, z=pos.z}
		local n = minetest.env:get_node(pos1).name
		if n ~= "air" then
			return
		end
		minetest.add_entity(pos1, "nssm:giant_sandworm")
		minetest.remove_node(pos)
end
})

--Morlavala nodes


minetest.register_node("nssb:morentir", {
	description = "Dark Stone",
	tiles = {"indistructible_morentir.png"},
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:indistructible_morentir", {
	description = "Dark Indistrucltible Stone",
	tiles = {"indistructible_morentir.png"},
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:morelentir", {
	description = "Dark Starred Stone",
	inventory_image = minetest.inventorycube("morelentir.png"),
	light_source = 6,
	tiles = {
		{
			name = "morelentir_animated.png",
			animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 6.0},
		},},
	is_ground_content = true,
	groups = {cracky=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("nssb:morkemen", {
	description = "Dark Dirt",
	tiles = {"morkemen.png"},
	is_ground_content = true,
	groups = {crumbly=1},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("nssb:morvilya", {
	description = "Dark Air",
	drawtype = "airlike",
	tiles = {"morvilya.png"},
	paramtype = "light",
	walkable = false,
	sunlight_propagates = true,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	drowning = 1,
	damage_per_second = 2,
	post_effect_color = {a=800, r=1, g=1, b=1},
})

minetest.register_node("nssb:mornar", {
	description = "Black Flame",
	drawtype = "firelike",
	tiles = {{
		name = "mornar_animated.png",
		animation = {type = "vertical_frames",
			aspect_w = 16, aspect_h = 16, length = 1},
	}},
	inventory_image = "mornar.png",
	light_source = 6,
	groups = {igniter = 2, dig_immediate = 3},
	drop = '',
	walkable = false,
	buildable_to = true,
	damage_per_second = 5,
	})

	minetest.register_node("nssb:mornen", {
	description = "Black Water",
	inventory_image = minetest.inventorycube("mornen.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "mornen_animated.png",
			animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2.0},
		},
	},
	alpha = 650,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	light_source = 10,
	liquid_range= 8,
	drowning = 1,
	liquid_renewable = true,
	damage_per_second = 2,
	liquidtype = "source",
	liquid_alternative_flowing = "nssb:mornen_flowing",
	liquid_alternative_source = "nssb:mornen",
	liquid_viscosity = 6,
	post_effect_color = {a=500, r=1, g=1, b=1},
	groups = {liquid=3, water=1, puts_out_fire=1},
})

minetest.register_node("nssb:mornen_flowing", {
	description = "Flowing Dark Water",
	inventory_image = minetest.inventorycube("mornen.png"),
	drawtype = "flowingliquid",
	tiles= {"mornen.png"},
	special_tiles = {
		{
			name = "mornen_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "mornen_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = 10,
	alpha = 650,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "nssb:mornen_flowing",
	liquid_alternative_source = "nssb:mornen",
	liquid_viscosity = 6,
	liquid_renewable = true,
	damage_per_second = 2,
	post_effect_color = {a=500, r=1, g=1, b=1},
	groups = {liquid=3, puts_out_fire=1, water=1, not_in_creative_inventory=1},
})

	minetest.register_node("nssb:portal", {
	description = "Morvala Portal",
	inventory_image = minetest.inventorycube("mornen.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "mornen_animated.png",
			animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2.0},
		},
	},
	alpha = 800,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	light_source = 15,
	liquid_range= 0,
	drowning = 1,
	liquid_renewable = false,
	liquidtype = "source",
	liquid_alternative_flowing = "nssb:portal",
	liquid_alternative_source = "nssb:portal",
	liquid_viscosity = 0,
	post_effect_color = {a=10, r=1, g=1, b=1},
	groups = {liquid=3, puts_out_fire=1},
})

minetest.register_node("nssb:morlote", {
	description = "Morlote",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"morlote.png"},
	inventory_image = "morlote.png",
	wield_image = "morlote.png",
	paramtype = "light",
	light_source= 10,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = false,
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
	},
})

--abm

minetest.register_abm({
	nodenames = {"default:torch"},
	neighbors = {"nssb:morentir","nssb:morkemen"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node)
			minetest.set_node({x = pos.x, y = pos.y , z = pos.z}, {name = "nssb:mornar"})
		end
})

minetest.register_abm({
	nodenames = {"nssb:morentir"},
	neighbors = {"air"},
	interval = 20.0,
	chance = 100,
	action = function(pos, node)
		local pos1 = {x=pos.x, y=pos.y+1, z=pos.z}
		local n = minetest.env:get_node(pos1).name
		if n == "air" then
			return
		minetest.set_node({x = pos.x, y = pos.y+1 , z = pos.z}, {name = "nssb:mornar"})
		end
	end
})


minetest.register_abm({
	nodenames = {"nssb:mornen", "nssb:mornen_flowing"},
	neighbors = {"air"},
	interval = 1.0,
	chance = 1,
	action =
		function (pos, node)
			minetest.add_particlespawner({
				amount = 6,
				time = 3,
				minpos = {x=pos.x-0.5, y=pos.y+0.5, z=pos.z-0.5},
				maxpos = {x=pos.x+0.5, y=pos.y+0.5, z=pos.z+0.5},
				minvel = {x=0, y=0.1, z=0},
				maxvel = {x=0, y=0.3, z=0},
				minacc = {x=0,y=0,z=0},
				maxacc = {x=0,y=0,z=0},
				minexptime = 1,
				maxexptime = 1.2,
				minsize = 0.5,
				maxsize = 0.7,
				collisiondetection = false,
				vertical = true,
				texture = "morparticle.png",
			})
		end

})


minetest.register_abm({
	nodenames = {"nssb:portal"},
	neighbors = {"air"},
	interval = 1.0,
	chance = 1,
	action =
		function (pos, node)
			minetest.add_particlespawner({
				amount = 100,
				time = 1,
				minpos = {x=pos.x-0.5, y=pos.y+0.5, z=pos.z-0.5},
				maxpos = {x=pos.x+0.5, y=pos.y+0.5, z=pos.z+0.5},
				minvel = {x=0, y=0.1, z=0},
				maxvel = {x=0, y=0.8, z=0},
				minacc = {x=0,y=0,z=0},
				maxacc = {x=0,y=0.4,z=0},
				minexptime = 1,
				maxexptime = 3,
				minsize = 0.5,
				maxsize = 1.4,
				collisiondetection = false,
				vertical = true,
				texture = "morparticle.png",
			})
--inserire funzione di teletrasporto che non sono in grado di fare
		end
})

--destination of teleporting
local function placeair (pos)
	local posair ={ x=0,y=-30600,z=0}
	minetest.place_schematic(posair, minetest.get_modpath("nssb").."/schems/air.mts")
end
--nodes gen

for i=1,9 do
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "nssb:indistructible_morentir",
		wherein        = {"default:stone","air","default:stone_with_coal","default:stone_with_iron","default:stone_with_mese","default:stone_with_diamond","default:stone_with_gold","default:stone_with_copper"},
		clust_scarcity = 1,
		clust_num_ores = 1,
		clust_size     = 1,
		y_min          = -30000,
		y_max          = -30001,
	})
end

local function replace(old, new)
	for i=1,9 do
		minetest.register_ore({
			ore_type       = "scatter",
			ore            = new,
			wherein        = old,
			clust_scarcity = 1,
			clust_num_ores = 1,
			clust_size     = 1,
			y_min          = -30999,
			y_max          = -30001,
		})
	end
end

replace("default:stone", "nssb:morentir")
replace("default:stone_with_coal", "nssb:morelentir")
replace("default:stone_with_iron", "nssb:morelentir")
replace("default:stone_with_mese", "nssb:morentir")
replace("default:stone_with_diamond", "nssb:morentir")
replace("default:stone_with_gold", "nssb:morentir")
replace("default:stone_with_copper", "nssb:morentir")
replace("default:gravel", "nssb:morkemen")
replace("default:dirt", "nssb:morkemen")
replace("default:sand", "nssb:morkemen")
replace("default:lava_source", "nssb:mornen")
replace("default:lava_flowing", "nssb:mornen_flowing")
replace("default:mese_block", "nssb:mornen")

minetest.register_ore({
   ore_type       = "blob",
   ore            = "air",
   wherein        = "nssb:morentir",
   clust_scarcity = 8*8*8,
   clust_num_ores = 200,
   clust_size     = 7,
	y_min         = -30999,
	y_max         = -30001,
})
--[[
minetest.register_ore({
   ore_type       = "scatter",
   ore            = "air",
   wherein        = "nssb:morentir",
   clust_scarcity = 3*3*3,
   clust_num_ores = 200,
   clust_size     = 10,
	y_min         = -30999,
	y_max         = -30001,
})]]

minetest.register_ore({
   ore_type       = "blob",
   ore            = "nssb:morvilya",
   wherein        = "air",
   clust_scarcity = 8*8*8,
   clust_num_ores = 100,
   clust_size     = 5,
	y_min         = -30999,
	y_max         = -30001,
})

minetest.register_ore({
   ore_type       = "blob",
   ore            = "nssb:mornar",
   wherein        = "air",
   clust_scarcity = 6*6*6,
   clust_num_ores = 3,
   clust_size     = 2,
	y_min         = -30999,
	y_max         = -30001,
})