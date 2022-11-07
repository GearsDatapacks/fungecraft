summon marker ~ ~ ~ {Tags:["fungecraft.data_get"]}

scoreboard players set #outofbounds fungecraft 0

function fungecraft:stack/pop
execute store result score #temp fungecraft run data get storage fungecraft:main Current
execute if score #temp fungecraft matches 81.. run scoreboard players set #outofbounds fungecraft 1
execute if score #temp fungecraft matches ..-1 run scoreboard players set #outofbounds fungecraft 1

execute store result entity @e[type=marker,tag=fungecraft.data_get,sort=nearest,limit=1] Pos[2] double 1 run scoreboard players operation #temp fungecraft += .start_z fungecraft.coords

function fungecraft:stack/pop
execute store result score #temp fungecraft run data get storage fungecraft:main Current
execute if score #temp fungecraft matches 26.. run scoreboard players set #outofbounds fungecraft 1
execute if score #temp fungecraft matches ..-1 run scoreboard players set #outofbounds fungecraft 1

execute store result entity @e[type=marker,tag=fungecraft.data_get,sort=nearest,limit=1] Pos[0] double 1 run scoreboard players operation #temp fungecraft += .start_x fungecraft.coords

execute unless score #outofbounds fungecraft matches 1 at @e[type=marker,tag=fungecraft.data_get,sort=nearest,limit=1] run function fungecraft:util/block_to_num

execute if score #outofbounds fungecraft matches 1 run data modify storage fungecraft:main Current set value 0

data modify storage fungecraft:main Args[0] set from storage fungecraft:main Current
function fungecraft:stack/push

kill @e[type=marker,tag=fungecraft.data_get,sort=nearest,limit=1]
