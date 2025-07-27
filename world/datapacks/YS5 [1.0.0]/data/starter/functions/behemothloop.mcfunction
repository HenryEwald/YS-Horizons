execute at @e[tag=behemothlazer,type=guardian,scores={randome=1}] unless entity @e[tag=behemoth,type=zombie,distance=..1.5] run playsound minecraft:entity.behemoth.death hostile @a ~ ~ ~ 2 1 0
execute at @e[tag=behemothlazer,type=guardian,scores={randome=2}] unless entity @e[tag=behemoth,type=zombie,distance=..1.5] run playsound minecraft:entity.behemoth.death hostile @a ~ ~ ~ 2 0.9 0
execute at @e[tag=behemothlazer,type=guardian,scores={randome=3}] unless entity @e[tag=behemoth,type=zombie,distance=..1.5] run playsound minecraft:entity.behemoth.death hostile @a ~ ~ ~ 2 1.1 0
execute at @e[tag=behemoth,type=zombie,scores={randome=1}] unless entity @e[tag=behemothlazer,type=guardian,distance=..1.5] run playsound minecraft:entity.behemoth.death hostile @a ~ ~ ~ 2 1 0
execute at @e[tag=behemoth,type=zombie,scores={randome=2}] unless entity @e[tag=behemothlazer,type=guardian,distance=..1.5] run playsound minecraft:entity.behemoth.death hostile @a ~ ~ ~ 2 0.9 0
execute at @e[tag=behemoth,type=zombie,scores={randome=3}] unless entity @e[tag=behemothlazer,type=guardian,distance=..1.5] run playsound minecraft:entity.behemoth.death hostile @a ~ ~ ~ 2 1.1 0
effect give @e[tag=behemoth] minecraft:fire_resistance 10000 1
execute at @e[tag=behemoth,type=zombie] if entity @e[tag=behemothlazer,type=guardian,limit=1,sort=nearest,nbt={HurtTime:10s},distance=..1.5] run effect give @e[tag=behemoth,type=zombie,limit=1,sort=nearest,distance=..1.5] minecraft:instant_health 1 0 true

execute at @e[tag=behemoth,type=zombie] unless entity @e[tag=behemothlazer,type=guardian,distance=..1.5] run kill @e[tag=behemoth,type=zombie,sort=nearest,limit=1]
execute at @e[tag=behemothlazer,type=guardian] unless entity @e[tag=behemoth,type=zombie,distance=..1.5] run kill @e[tag=behemothlazer,type=guardian,sort=nearest,limit=1]
execute at @e[tag=deathbe,type=armor_stand] unless entity @e[tag=behemothlazer,type=guardian,distance=..1.5] run kill @e[tag=deathbe,type=armor_stand,sort=nearest,limit=1]
execute at @e[tag=becrystal,type=end_crystal] unless entity @e[tag=deathbe,type=armor_stand,distance=..1.5] run kill @e[tag=becrystal,type=end_crystal,sort=nearest,limit=1]

scoreboard players add @e[tag=behemoth,type=zombie] randome 1
scoreboard players set @e[tag=behemoth,type=zombie,scores={randome=4..}] randome 1
scoreboard players add @e[tag=behemothlazer,type=guardian] randome 1
scoreboard players set @e[tag=behemothlazer,type=guardian,scores={randome=4..}] randome 1

execute at @e[tag=behemoth,type=zombie,nbt={HurtTime:10s},scores={randome=1}] run playsound minecraft:entity.behemoth.hurt hostile @a ~ ~ ~ 1 1 0
execute at @e[tag=behemoth,type=zombie,nbt={HurtTime:10s},scores={randome=2}] run playsound minecraft:entity.behemoth.hurt hostile @a ~ ~ ~ 1 0.9 0
execute at @e[tag=behemoth,type=zombie,nbt={HurtTime:10s},scores={randome=3}] run playsound minecraft:entity.behemoth.hurt hostile @a ~ ~ ~ 1 1.1 0

execute at @e[tag=behemoth,type=zombie] run scoreboard players add @e[tag=behemoth,type=zombie,limit=1,sort=random] ambient 3
execute at @e[tag=behemoth,type=zombie,scores={randome=1,ambient=600}] run playsound minecraft:entity.behemoth.ambient hostile @a ~ ~ ~ 1 1 0
execute at @e[tag=behemoth,type=zombie,scores={randome=2,ambient=600}] run playsound minecraft:entity.behemoth.ambient hostile @a ~ ~ ~ 1 1.1 0
execute at @e[tag=behemoth,type=zombie,scores={randome=3,ambient=600}] run playsound minecraft:entity.behemoth.ambient hostile @a ~ ~ ~ 1 0.9 0
scoreboard players set @e[tag=behemoth,type=zombie,scores={ambient=600..}] ambient 0
