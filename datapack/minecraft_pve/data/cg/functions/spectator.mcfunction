gamemode spectator @s
team leave @s
scoreboard players set @s hasDied 0
execute unless score Current VAR matches 0 run function cg:playerdeath