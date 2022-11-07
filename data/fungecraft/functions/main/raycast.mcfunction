scoreboard players remove #itter fungecraft 1

execute if block ~ ~ ~ stone run summon marker ~ ~ ~ {Tags:["start_block"]}

execute unless block ~ ~ ~ stone if score #itter fungecraft matches 1.. positioned ^ ^ ^0.5 run function fungecraft:main/raycast
