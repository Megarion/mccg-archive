execute store result score PlayerCount VAR run team list player
tellraw @a [{"text":"Players left: ","color":"red"}, {"score":{"objective":"VAR","name":"PlayerCount"}, "color": "red"}]