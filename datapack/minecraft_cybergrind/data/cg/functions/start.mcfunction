title @a times 20 20 300
title @a title [{"text":"The Cyber Grind","color":"yellow"}]
worldborder set 1
worldborder add 99 15
tp @a[gamemode=adventure] 0 16 0
bossbar set announcement visible false
scoreboard players set PlayerCount VAR 1
schedule function cg:init 15s