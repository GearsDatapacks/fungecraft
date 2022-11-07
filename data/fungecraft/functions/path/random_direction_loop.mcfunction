spreadplayers ~ ~ 0 1 false @e[type=armor_stand,tag=fungecraft.random_direction,limit=1]
execute if entity @e[type=armor_stand,tag=fungecraft.random_direction,distance=..0.9] run function fungecraft:path/random_direction_loop
execute positioned ~1 ~ ~1 if entity @e[type=armor_stand,tag=fungecraft.random_direction,distance=..0.9] positioned ~-1 ~ ~-1 run function fungecraft:path/random_direction_loop
execute positioned ~-1 ~ ~-1 if entity @e[type=armor_stand,tag=fungecraft.random_direction,distance=..0.9] positioned ~1 ~ ~1 run function fungecraft:path/random_direction_loop
execute positioned ~-1 ~ ~1 if entity @e[type=armor_stand,tag=fungecraft.random_direction,distance=..0.9] positioned ~1 ~ ~-1 run function fungecraft:path/random_direction_loop
execute positioned ~1 ~ ~-1 if entity @e[type=armor_stand,tag=fungecraft.random_direction,distance=..0.9] positioned ~-1 ~ ~1 run function fungecraft:path/random_direction_loop
