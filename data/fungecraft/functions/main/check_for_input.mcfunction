execute if data entity @s {SelectedItem:{id:"minecraft:writable_book",tag:{FungeCraftInput:1b,pages:['done']}}} run data modify storage fungecraft:main CurrentPages set from entity @s SelectedItem.tag.pages
execute if data entity @s {SelectedItem:{id:"minecraft:writable_book",tag:{FungeCraftInput:1b,pages:['done']}}} run scoreboard players set #running fungecraft 1
execute if data entity @s {SelectedItem:{id:"minecraft:writable_book",tag:{FungeCraftInput:1b,pages:['done']}}} run scoreboard players set @s waiting 0

execute if data entity @s {SelectedItem:{id:"minecraft:writable_book",tag:{FungeCraftInput:1b,InputType:'ascii',pages:['done']}}} run function fungecraft:util/ascii_to_num
execute if data entity @s {SelectedItem:{id:"minecraft:writable_book",tag:{FungeCraftInput:1b,InputType:'number',pages:['done']}}} run function fungecraft:util/parse_number

execute if data entity @s {SelectedItem:{id:"minecraft:writable_book",tag:{FungeCraftInput:1b,pages:['done']}}} as @e[type=armor_stand,tag=fungecraft.path] at @s run tp @s ^ ^ ^1

clear @s writable_book{FungeCraftInput:1b,pages:["done"]}
