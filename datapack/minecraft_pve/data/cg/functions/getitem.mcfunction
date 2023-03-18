clear @s glowstone 1
scoreboard players add @s Item 1
execute as @e[nbt={Tags:["item_give"]},sort=random,limit=1] run function cg:giveitem