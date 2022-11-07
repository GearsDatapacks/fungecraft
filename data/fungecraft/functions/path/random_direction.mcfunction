summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["fungecraft.random_direction"]}
function fungecraft:path/random_direction_loop

execute facing entity @e[type=armor_stand,tag=fungecraft.random_direction,limit=1] eyes run tp @s ~ ~ ~ ~ 0
kill @e[type=armor_stand,tag=fungecraft.random_direction]
