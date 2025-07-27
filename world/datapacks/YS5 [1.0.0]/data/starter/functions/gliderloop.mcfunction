scoreboard players add @e[tag=glider,type=donkey] randome 1
scoreboard players set @e[tag=glider,type=donkey,scores={randome=4..}] randome 1

execute at @e[tag=glider,type=donkey] unless block ~ ~ ~ minecraft:air if entity @e[tag=glider,type=donkey,distance=..0.5,nbt={Tame:0b}] run tp @e[tag=glider,type=donkey,distance=..0.5] ~ ~ ~2
execute at @e[tag=glider,type=donkey] unless block ~ ~ ~1 minecraft:air if entity @e[tag=glider,type=donkey,distance=..0.5,nbt={Tame:0b}] run tp @e[tag=glider,type=donkey,distance=..0.5] ~ ~ ~2

execute at @e[tag=glider,type=donkey] unless entity @p[distance=..10] if entity @e[tag=glider,type=donkey,distance=..0.5,nbt={Age:0}] if entity @e[tag=glider,type=donkey,distance=..0.5,nbt={Tame:0b}] run data merge entity @e[type=donkey,limit=1,sort=nearest] {Motion:[0.0,0.0,0.1]}
execute at @e[tag=glider,type=donkey] unless entity @p[distance=..10] if entity @e[tag=glider,type=donkey,distance=..0.5,nbt={Age:0}] if entity @e[tag=glider,type=donkey,distance=..0.5,nbt={Tame:0b}] run tp @e[type=donkey,limit=1,sort=nearest] ~ ~ ~ facing ~ ~ ~1
execute at @e[tag=glider] run data merge entity @e[type=donkey,limit=1,distance=..1,tag=!glider] {NoGravity:1b,Team:"noname",Tags:["glider"],CustomName:'{"text":"Glider"}',Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.75}]}

execute at @e[tag=glider,type=donkey] run scoreboard players add @e[tag=glider,type=donkey,limit=1,sort=random] ambient 3
execute at @e[tag=glider,type=donkey,scores={randome=1,ambient=600}] run playsound minecraft:entity.glider.ambient hostile @a ~ ~ ~ 5 1 0
execute at @e[tag=glider,type=donkey,scores={randome=2,ambient=600}] run playsound minecraft:entity.glider.ambient hostile @a ~ ~ ~ 5 1.1 0
execute at @e[tag=glider,type=donkey,scores={randome=3,ambient=600}] run playsound minecraft:entity.glider.ambient hostile @a ~ ~ ~ 5 0.9 0
scoreboard players set @e[tag=glider,type=donkey,scores={ambient=600..}] ambient 0