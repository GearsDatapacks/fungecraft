data modify storage fungecraft:main Current set from storage fungecraft:main CurrentPages[0]
function fungecraft:util/parse_digit

data modify storage fungecraft:main Args[0] set value 10
execute store result storage fungecraft:main Args[1] int 1 run scoreboard players get #itter fungecraft
function fungecraft:util/power

execute store result score .a fungecraft run data get storage fungecraft:main Current
scoreboard players operation .b fungecraft *= .a fungecraft
execute unless score .a fungecraft matches -1 run scoreboard players operation .c fungecraft += .b fungecraft

execute unless score .a fungecraft matches -1 run scoreboard players add #itter fungecraft 1

data remove storage fungecraft:main CurrentPages[0]

execute if data storage fungecraft:main CurrentPages[0] run function fungecraft:util/parse_number_loop
