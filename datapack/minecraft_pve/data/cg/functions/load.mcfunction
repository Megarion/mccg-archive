scoreboard objectives add food food
scoreboard objectives add hasDied deathCount
scoreboard objectives setdisplay belowName
scoreboard objectives add VAR dummy
scoreboard objectives add Health health
scoreboard objectives setdisplay belowName
scoreboard objectives add waveSurvive dummy {"text":"TOP SURVIVORS","bold":true,"color":"yellow"}
scoreboard objectives setdisplay sidebar waveSurvive
scoreboard players set TotalKills VAR 0
scoreboard players set #zero VAR 0
scoreboard players set #const1 VAR 20
scoreboard players set #const2 VAR 25
scoreboard players set #const3 VAR 5
scoreboard players set Current VAR 0
scoreboard objectives add startGame trigger
scoreboard objectives add Item dummy
team add enemy
team add player
bossbar remove announcement
bossbar add announcement [{"text":"/trigger startGame ","bold":true,"color":"red"},{"text":"to start","bold":true,"color":"white"}]
bossbar set announcement players @a
bossbar set announcement color red
bossbar set announcement max 1
bossbar set announcement value 1
bossbar set announcement visible true
scoreboard players reset @a waveSurvive

function cg:end
tellraw @a {"text": "cg:load", "color": "green"}