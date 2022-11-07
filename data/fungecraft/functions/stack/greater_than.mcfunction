function fungecraft:stack/pop
execute store result score .a fungecraft run data get storage fungecraft:main Current
function fungecraft:stack/pop
execute store result score .b fungecraft run data get storage fungecraft:main Current

execute if score .b fungecraft > .a fungecraft run scoreboard players set .c fungecraft 1
execute unless score .b fungecraft > .a fungecraft run scoreboard players set .c fungecraft 0

execute store result storage fungecraft:main Args[0] int 1 run scoreboard players get .c fungecraft

function fungecraft:stack/push