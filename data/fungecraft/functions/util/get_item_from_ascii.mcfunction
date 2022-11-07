execute if score #itter fungecraft matches ..0 run data modify storage fungecraft:main Current set from storage fungecraft:main CurrentAscii[0]
data remove storage fungecraft:main CurrentAscii[0]
scoreboard players remove #itter fungecraft 1
execute if score #itter fungecraft matches 0.. run function fungecraft:util/get_item_from_ascii
