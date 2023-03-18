execute as @a[gamemode=adventure] run team join player @s
scoreboard players set Current VAR 1
scoreboard players set TotalKills VAR 0
scoreboard players set PlayerCount VAR 1
scoreboard players set EnemyCount VAR 0
scoreboard players set TimerItem VAR 0
scoreboard players set Wave VAR 0
scoreboard players reset @a Item
bossbar add time ""
bossbar set time color yellow
bossbar set time players @a
bossbar set time style progress
bossbar set time max 1
bossbar set time value 1
bossbar set announcement visible false

summon armor_stand -2 40 -2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -2 40 -1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -2 40 0 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand -2 40 1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -2 40 2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -1 40 -2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -1 40 -1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -1 40 0 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand -1 40 1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -1 40 2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 40 -2 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 0 40 -1 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 0 40 0 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 0 40 1 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 0 40 2 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 1 40 -2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 1 40 -1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 1 40 0 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 1 40 1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 1 40 2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 2 40 -2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 2 40 -1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 2 40 0 {Tags:["item_gen"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
summon armor_stand 2 40 1 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 2 40 2 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 15 40 15 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 15 40 -15 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -15 40 15 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -15 40 -15 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 15 40 0 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 40 15 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -15 40 0 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 40 -15 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 23 40 23 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 23 40 -23 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -23 40 23 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -23 40 -23 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 23 40 0 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 40 23 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand -23 40 0 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 40 -23 {Tags:["item_gen"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}

summon armor_stand 0 100 0 {Tags:["item_give","item1"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item2"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item3"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item4"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item5"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item6"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item7"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item8"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item9"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item10"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item11"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item12"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item13"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item14"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item15"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item16"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item17"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item18"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item19"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item20"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}
summon armor_stand 0 100 0 {Tags:["item_give","item21"], NoGravity: 1b, Invulnerable: 1b, Invisible: 1b}

tellraw @a {"text":"Game started","color":"gold","bold":true}