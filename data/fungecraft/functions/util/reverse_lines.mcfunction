data modify storage fungecraft:main Item set from storage fungecraft:main Current[0]
data remove storage fungecraft:main Current[0]
data modify storage fungecraft:main OutLines prepend from storage fungecraft:main Item

execute if data storage fungecraft:main Current[0] run function fungecraft:util/reverse_lines
