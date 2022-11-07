execute if block ~ ~ ~ bedrock run function fungecraft:main/end

#directional stuff
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ -180 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~ magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ -90 0
execute if block ~ ~ ~ dropper run function fungecraft:path/random_direction

#debug
execute if block ~ ~ ~ grass_block run say I hit a grass block

#mathematical operations
execute if block ~ ~ ~ oxidized_cut_copper run function fungecraft:stack/add
execute if block ~ ~ ~ jukebox run function fungecraft:stack/subtract
execute if block ~ ~ ~ honeycomb_block run function fungecraft:stack/multiply
execute if block ~ ~ ~ light_blue_glazed_terracotta run function fungecraft:stack/divide
execute if block ~ ~ ~ nether_quartz_ore run function fungecraft:stack/modulo

#pushing values
execute if block ~ ~ ~ chest run function fungecraft:stack/push_value

#logical operators
execute if block ~ ~ ~ bamboo run function fungecraft:stack/not
execute if block ~ ~ ~ comparator run function fungecraft:stack/greater_than

#flow control
execute if block ~ ~ ~ repeater[facing=south] run function fungecraft:path/horizontal_if
execute if block ~ ~ ~ repeater[facing=west] run function fungecraft:path/vertical_if

#stack manipulation
execute if block ~ ~ ~ piston run function fungecraft:stack/swap
execute if block ~ ~ ~ lava_cauldron run function fungecraft:stack/pop
execute if block ~ ~ ~ dispenser run function fungecraft:stack/duplicate

#misc
execute if block ~ ~ ~ cobblestone_stairs run tp ^ ^ ^1

#outputs
execute if block ~ ~ ~ warped_sign run function fungecraft:io/output_number
execute if block ~ ~ ~ oak_sign run function fungecraft:io/output_ascii

#inputs
execute if block ~ ~ ~ lectern run function fungecraft:io/input_ascii
execute if block ~ ~ ~ observer run function fungecraft:io/input_num

#ascii-blocks
execute if block ~ ~ ~ tripwire run scoreboard players set #stringmode fungecraft 1
execute if block ~ ~ ~ note_block run function fungecraft:data/get
execute if block ~ ~ ~ sticky_piston run function fungecraft:data/put
