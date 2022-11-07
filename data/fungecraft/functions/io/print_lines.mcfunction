tellraw @a {"nbt":"OutLines[0]","storage":"fungecraft:main","interpret":true}

data remove storage fungecraft:main OutLines[0]

execute if data storage fungecraft:main OutLines[0] run function fungecraft:io/print_lines
