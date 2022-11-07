data modify storage fungecraft:main Current set from storage fungecraft:main Out[0]
data remove storage fungecraft:main Out[0]

execute if data storage fungecraft:main {Current:'\\n'} run data modify storage fungecraft:main OutLines prepend value []
execute if data storage fungecraft:main {Current:'\\t'} run data modify storage fungecraft:main OutLines[0] append value '    '
execute unless data storage fungecraft:main {Current:'\\n'} unless data storage fungecraft:main {Current:'\\t'} run data modify storage fungecraft:main OutLines[0] append from storage fungecraft:main Current

execute if data storage fungecraft:main Out[0] run function fungecraft:io/format_output
