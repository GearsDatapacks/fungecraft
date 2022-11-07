function fungecraft:util/get_relative_coordinates
execute if score .current_x fungecraft.coords matches 26.. store result entity @s Pos[0] double 1 run scoreboard players get .start_x fungecraft.coords
execute if score .current_z fungecraft.coords matches 81.. store result entity @s Pos[2] double 1 run scoreboard players get .start_z fungecraft.coords
scoreboard players set #temp fungecraft.coords 25
scoreboard players operation #temp fungecraft.coords += .start_x fungecraft.coords
execute if score .current_x fungecraft.coords matches ..-1 store result entity @s Pos[0] double 1 run scoreboard players get #temp fungecraft.coords
scoreboard players set #temp fungecraft.coords 80
scoreboard players operation #temp fungecraft.coords += .start_z fungecraft.coords
execute if score .current_z fungecraft.coords matches ..-1 store result entity @s Pos[2] double 1 run scoreboard players get #temp fungecraft.coords

execute at @s align xyz run tp @s ~0.5 ~ ~0.5

execute if score #running fungecraft matches 0 as @a[scores={waiting=1}] run function fungecraft:main/check_for_input

execute if score #running fungecraft matches 1 if score #stringmode fungecraft matches 1 at @s run function fungecraft:io/string_check
execute if score #running fungecraft matches 1 if score #stringmode fungecraft matches 0 at @s run function fungecraft:main/check_block

execute if score #running fungecraft matches 1 at @s run tp @s ^ ^ ^1


execute if score #removestringmode fungecraft matches 1 run scoreboard players set #stringmode fungecraft 0
scoreboard players set #removestringmode fungecraft 0
