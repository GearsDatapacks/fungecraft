execute store result score #temp fungecraft run data get storage fungecraft:main Current
execute if score #temp fungecraft matches 2.. run data modify storage fungecraft:main Current set value -1

execute if data storage fungecraft:main {Current:'1'} run data modify storage fungecraft:main Current set value 1
execute if data storage fungecraft:main {Current:'2'} run data modify storage fungecraft:main Current set value 2
execute if data storage fungecraft:main {Current:'3'} run data modify storage fungecraft:main Current set value 3
execute if data storage fungecraft:main {Current:'4'} run data modify storage fungecraft:main Current set value 4
execute if data storage fungecraft:main {Current:'5'} run data modify storage fungecraft:main Current set value 5
execute if data storage fungecraft:main {Current:'6'} run data modify storage fungecraft:main Current set value 6
execute if data storage fungecraft:main {Current:'7'} run data modify storage fungecraft:main Current set value 7
execute if data storage fungecraft:main {Current:'8'} run data modify storage fungecraft:main Current set value 8
execute if data storage fungecraft:main {Current:'9'} run data modify storage fungecraft:main Current set value 9
execute if data storage fungecraft:main {Current:'0'} run data modify storage fungecraft:main Current set value 0
