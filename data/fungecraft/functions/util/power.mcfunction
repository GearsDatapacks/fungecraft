execute store result score .a fungecraft run data get storage fungecraft:main Args[0]
execute store result score #power_itter fungecraft run data get storage fungecraft:main Args[1]
scoreboard players set .b fungecraft 1

execute if score #power_itter fungecraft matches 1.. run function fungecraft:util/power_loop
