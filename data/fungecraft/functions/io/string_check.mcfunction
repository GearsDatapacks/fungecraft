execute if block ~ ~ ~ tripwire run scoreboard players set #removestringmode fungecraft 1

function fungecraft:util/block_to_num

data modify storage fungecraft:main Args[0] set from storage fungecraft:main Current

execute unless block ~ ~ ~ tripwire run function fungecraft:stack/push
