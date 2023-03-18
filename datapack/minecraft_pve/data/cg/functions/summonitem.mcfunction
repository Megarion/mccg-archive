# 1200
scoreboard players set TimerItem VAR 1200
kill @e[type=item,nbt={Item: {id:"minecraft:glowstone"}}]
execute at @e[nbt={Tags:["item_gen"]}] run summon item ~ ~ ~ {Item:{id:"glowstone",Count:1b, tag:{Enchantments:[{}]}}}