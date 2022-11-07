execute store result score .current_x fungecraft.coords run data get entity @s Pos[0]
execute store result score .current_z fungecraft.coords run data get entity @s Pos[2]

scoreboard players operation .current_x fungecraft.coords -= .start_x fungecraft.coords
scoreboard players operation .current_z fungecraft.coords -= .start_z fungecraft.coords
