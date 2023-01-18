function cg:end
worldborder set 1 5
schedule function cg:killenemies 5s
schedule function cg:resetborder 5s
title @a times 20 20 100
title @a title [{"text":"Game ended!","color":"yellow"}]
tellraw @a {"text":"Cybergrind ended","color":"gold","bold":true}