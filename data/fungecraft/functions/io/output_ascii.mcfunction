function fungecraft:stack/pop
data modify storage fungecraft:main Args[0] set from storage fungecraft:main Current

function fungecraft:util/get_ascii

data modify storage fungecraft:main Out append from storage fungecraft:main Current
