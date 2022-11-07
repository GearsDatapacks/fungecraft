scoreboard players set #itter fungecraft 0
scoreboard players set .c fungecraft 0

data modify storage fungecraft:main Current set from storage fungecraft:main CurrentPages
data modify storage fungecraft:main Temp set value []
function fungecraft:util/reverse_number
data modify storage fungecraft:main CurrentPages set from storage fungecraft:main Temp

function fungecraft:util/parse_number_loop

execute store result storage fungecraft:main Args[0] int 1 run scoreboard players get .c fungecraft
function fungecraft:stack/push
