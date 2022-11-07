execute as @e[type=armor_stand,tag=fungecraft.path] at @s run function fungecraft:main/_tick

scoreboard players enable @a fungecraft.play
execute as @a[scores={fungecraft.play=1..}] at @s run function fungecraft:main/start
scoreboard players set @a fungecraft.play 0

scoreboard players enable @a fungecraft.help
execute as @a[scores={fungecraft.help=1..}] at @s run tellraw @s {"text": "FungeCraft by Gears. It is a Minecraft representation of Befunge. You can read more here."}
scoreboard players set @a fungecraft.help 0
