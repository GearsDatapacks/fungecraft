function fungecraft:stack/pop
execute store result score .a fungecraft run data get storage fungecraft:main Current
function fungecraft:stack/pop
execute store result score .b fungecraft run data get storage fungecraft:main Current

execute store result storage fungecraft:main Args[0] int 1 run scoreboard players get .a fungecraft
function fungecraft:stack/push

execute store result storage fungecraft:main Args[0] int 1 run scoreboard players get .b fungecraft
function fungecraft:stack/push
