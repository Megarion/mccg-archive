scoreboard players add Wave VAR 1
scoreboard players set EnemyCount VAR 0
scoreboard players operation @a[gamemode=adventure] waveSurvive = Wave VAR
tellraw @a [{"text":"Wave ", "color": "green","bold":true},{"score":{"objective":"VAR","name":"Wave"}, "color": "green","bold":true}]

execute if score Wave VAR matches 1 run function cg:enemy/1
execute if score Wave VAR matches 2 run function cg:enemy/1a
execute if score Wave VAR matches 3 run function cg:enemy/2
execute if score Wave VAR matches 4..5 run function cg:enemy/3
execute if score Wave VAR matches 6..7 run function cg:enemy/4
execute if score Wave VAR matches 8..9 run function cg:enemy/5
# scoreboard players operation ModWave VAR = Wave VAR
# scoreboard players operation ModWave VAR %= #const1 VAR
# execute if score ModWave VAR matches 0 run function cg:enemy/7
# scoreboard players operation ModWave VAR = Wave VAR
# scoreboard players operation ModWave VAR %= #const2 VAR
# execute if score ModWave VAR matches 0 run function cg:enemy/8

# Radiance
execute if score Wave VAR matches 10.. run function cg:enemy/6
execute if score Wave VAR matches 10 run function cg:enemy/announce