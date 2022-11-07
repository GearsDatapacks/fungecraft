function fungecraft:stack/pop
execute store result score .a fungecraft run data get storage fungecraft:main Current

execute if score .a fungecraft matches 0 run scoreboard players set .b fungecraft 1
execute unless score .a fungecraft matches 0 run scoreboard players set .b fungecraft 0

execute store result storage fungecraft:main Args[0] int 1 run scoreboard players get .b fungecraft

function fungecraft:stack/push