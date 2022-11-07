function fungecraft:main/reset_assets

scoreboard players set #itter fungecraft 10
execute anchored eyes positioned ^ ^ ^ run function fungecraft:main/raycast

execute at @e[type=marker,tag=start_block,limit=1] align xyz positioned ~0.5 ~ ~1.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["fungecraft.path"],Marker:1b}
kill @e[type=marker,tag=start_block]

execute as @e[type=armor_stand,tag=fungecraft.path,sort=nearest,limit=1] at @s run function fungecraft:main/get_starting_coords

# execute at @e[type=marker,tag=start_block,limit=1] align xyz run clone ~ ~ ~ ~25 ~ ~80 ~ 319 ~
