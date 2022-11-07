summon marker ~ ~ ~ {Tags:["fungecraft.data_put"]}

function fungecraft:stack/pop
execute store result score #temp fungecraft run data get storage fungecraft:main Current

execute store result entity @e[type=marker,tag=fungecraft.data_put,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players operation #temp fungecraft += .start_z fungecraft.coords

function fungecraft:stack/pop
execute store result score #temp fungecraft run data get storage fungecraft:main Current

execute store result entity @e[type=marker,tag=fungecraft.data_put,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players operation #temp fungecraft += .start_x fungecraft.coords

function fungecraft:stack/pop
execute at @e[type=marker,tag=fungecraft.data_put,sort=nearest,limit=1] run function fungecraft:util/num_to_block

kill @e[type=marker,tag=fungecraft.data_put,sort=nearest,limit=1]
