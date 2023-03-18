execute as @a[gamemode=adventure] run execute if score @s hasDied matches 1.. run function cg:spectator
execute as @a[gamemode=adventure,advancements={adventure/totem_of_undying=true}] run function cg:totem_of_undying
execute as @a[team=player,gamemode=!adventure] run team leave @s
# execute as @a[gamemode=adventure] run effect give @s health_boost 999999 9 true
execute if score PlayerCount VAR matches ..0 run execute unless score Current VAR matches 0 run function cg:stop
execute unless score Current VAR matches 0 run execute if score TimerItem VAR matches ..0 run function cg:summonitem
execute unless score Current VAR matches 0 run execute if score EnemyCount VAR matches ..0 run function cg:spawn
execute unless score Current VAR matches 0 run scoreboard players remove TimerItem VAR 1
bossbar set time name [{"text":"Wave "},{"score":{"objective":"VAR","name":"Wave"}},{"text":" - Kills: "},{"score":{"objective":"VAR","name":"TotalKills"}},{"text":" - Enemies left: "},{"score":{"objective":"VAR","name":"EnemyCount"}}]

execute as @e[type=iron_golem] run data modify entity @s AngryAt set from entity @e[team=enemy,sort=nearest,limit=1] UUID
execute as @e[type=zombified_piglin] run data modify entity @s AngryAt set from entity @p[team=player] UUID
execute as @e[type=wolf] run data modify entity @s AngryAt set from entity @p[team=player] UUID
execute as @e[type=polar_bear] run data modify entity @s AngryAt set from entity @p[team=player] UUID
execute as @e[type=piglin_brute] run data modify entity @s IsImmuneToZombification set value true
execute as @e[type=piglin] run data modify entity @s IsImmuneToZombification set value true
execute as @e[type=hoglin] run data modify entity @s IsImmuneToZombification set value true
execute as @e[type=shulker] run data modify entity @s AttachFace set value 0b

execute if score Current VAR matches 0 run kill @e[type=slime]
execute if score Current VAR matches 0 run kill @e[type=magma_cube]

# Map
# fill -25 14 -25 25 3 25 minecraft:bedrock
# fill -25 3 -25 -25 14 25 minecraft:acacia_button[facing=west]
# fill 25 3 -25 25 14 25 minecraft:acacia_button[facing=east]
# fill -25 3 25 25 14 25 minecraft:acacia_button[facing=south]
# fill -25 3 25 -25 14 25 minecraft:acacia_button[facing=north]

# Weapons
clear @a[team=player] bucket
clear @a[team=player] glass_bottle
execute as @e[type=trident,nbt={inGround:1b}] run function cg:summon2
execute as @e[type=trident,nbt={DealtDamage:1b}] run function cg:summon2
# clear @s trident{Enchantments:[{id:riptide,lvl:2}],Damage:249}
execute as @e[type=armor_stand,nbt={Tags:["tnt_minecart"]}] run function cg:summon0
execute as @e[type=fireball,nbt={Tags:["landmine"]}] at @s if entity @e[distance=..2,type=!fireball] run data modify entity @s Motion set value [0.0,-10.0,0.0]
execute as @e[type=armor_stand,nbt={Tags:["evoker_fangs"]}] run function cg:summon1
execute as @e[type=armor_stand,nbt={Tags:["dragon_breath"]}] run function cg:summon3
execute at @e[type=evoker_fangs,nbt={Tags:["player_evoker_fang"]}] run effect give @e[distance=..1] wither 1 3
execute as @e[type=armor_stand,nbt={Tags:["tnt"]}] at @s run function cg:summon4
execute as @e[type=armor_stand,nbt={Tags:["iron_golem"]}] at @s run function cg:summon5
execute as @e[type=snowball] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["explosion_watcher"]}
execute as @e[type=minecraft:area_effect_cloud,tag=explosion_watcher] at @s unless entity @e[type=minecraft:snowball,distance=..3] run summon tnt ~ ~ ~
execute as @e[type=!player,nbt={ActiveEffects:[{Id:13b}]}] run data modify entity @s Fire set value 200s

# Inventory
execute as @a[team=player] run function cg:replaceitem
execute as @a[nbt={Inventory:[{id:"minecraft:glowstone"}]}] run function cg:getitem
kill @e[type=item,nbt={Item: {id:"minecraft:structure_void"}}]
kill @e[type=item,nbt={Item: {id:"minecraft:leather_helmet"}}]
kill @e[type=item,nbt={Item: {id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item: {id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item: {id:"minecraft:leather_boots"}}]
kill @e[type=item,nbt={Item: {id:"minecraft:wither_rose"}}]
kill @e[type=experience_orb]

scoreboard players enable @a startGame
execute as @a[scores={startGame=1..}] if score Current VAR matches 0 run function cg:playerjoin
scoreboard players set @a startGame 0

# Disable hunger
effect give @a[scores={food=18}] saturation 1 0 true

# Enemy count
execute as @e[type=!player] if data entity @s CustomName run team join enemy @s
execute as @e[type=vex] run team join enemy @s

scoreboard players operation PrevEnemyCount VAR = EnemyCount VAR
scoreboard players set EnemyCount VAR 0
execute as @e[team=enemy] run scoreboard players add EnemyCount VAR 1
execute if score PrevEnemyCount VAR > EnemyCount VAR run function cg:addkill
execute if score Current VAR matches 0 run execute store result score PlayerCount VAR run team list player

xp set @a 0 levels
xp set @a 0