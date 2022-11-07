function fungecraft:stack/pop
execute store result score .a fungecraft run data get storage fungecraft:main Current

execute if score .a fungecraft matches 0 run tp @s ~ ~ ~ -90 0
execute unless score .a fungecraft matches 0 run tp @s ~ ~ ~ 90 0