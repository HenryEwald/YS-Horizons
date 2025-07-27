execute at @a run scoreboard players add @a randome 1
scoreboard players set @a[scores={randome=4..}] randome 1

execute at @a unless entity @e[type=ender_dragon] run tag @e[type=minecraft:enderman,tag=!found,distance=16] add found
scoreboard players set @a countenderwhale 0
execute as @e[type=minecraft:enderman,tag=!found] unless entity @e[type=ender_dragon] run scoreboard players add @a countenderwhale 1
execute if entity @a[scores={countenderwhale=55..}] unless entity @e[type=ender_dragon] run tag @e[type=minecraft:enderman,tag=!found,limit=1,sort=random] add p3
execute if entity @a[scores={countenderwhale=55..}] unless entity @e[type=ender_dragon] run tag @e[type=minecraft:enderman,tag=!found] add found
execute at @e[type=minecraft:enderman,tag=p3] unless entity @e[type=ender_dragon] run summon phantom ~ ~100 ~ {Silent:1b,Invulnerable:1b,Team:"passive",DeathLootTable:"/",Size:25,Tags:["enderwhale"],Passengers:[{id:"minecraft:mule",Silent:1b,ChestedHorse:1b,Invulnerable:1b,DeathLootTable:"/",Tame:1b,Tags:["deathe"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:199999980,ShowParticles:0b}]}],CustomName:'{"text":"Enderwhale"}'}
execute at @e[type=minecraft:enderman,tag=p3] unless entity @e[type=ender_dragon] if entity @a[scores={randome=2}] run summon phantom ~ ~90 ~ {Silent:1b,Invulnerable:1b,Team:"passive",DeathLootTable:"/",Size:1,Tags:["enderwhale"],CustomName:'{"text":"Enderwhale"}'}
kill @e[type=minecraft:enderman,tag=p3]

execute at @a run tag @e[type=minecraft:enderman,tag=!found,distance=16] add found1
scoreboard players set @a countbehemoth 0
execute as @e[type=minecraft:enderman,tag=!found1] run scoreboard players add @a countbehemoth 1
execute if entity @a[scores={countbehemoth=25..}] run tag @e[type=minecraft:enderman,tag=!found1,limit=1,sort=random] add p1
execute if entity @a[scores={countbehemoth=25..}] run tag @e[type=minecraft:enderman,tag=!found1] add found1
execute at @e[type=minecraft:enderman,tag=p1] run summon zombie ~ ~ ~ {Silent:1b,Team:"noname",DeathLootTable:"starter:entities/behemothloot",Health:50f,Tags:["behemoth"],Passengers:[{id:"minecraft:guardian",Silent:1b,DeathLootTable:"/",Health:50000f,Tags:["behemothlazer"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500000}]}],CustomName:'{"text":"Behemoth"}',Attributes:[{Name:generic.max_health,Base:50},{Name:generic.attack_damage,Base:6},{Name:generic.attack_knockback,Base:0.6}]}
execute at @e[type=minecraft:enderman,tag=p1] run summon zombie ~ ~ ~ {Silent:1b,Team:"noname",DeathLootTable:"starter:entities/behemothloot",Health:50f,Tags:["behemoth"],Passengers:[{id:"minecraft:guardian",Silent:1b,DeathLootTable:"/",Health:50000f,Tags:["behemothlazer"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500000}]}],CustomName:'{"text":"Behemoth"}',Attributes:[{Name:generic.max_health,Base:50},{Name:generic.attack_damage,Base:6},{Name:generic.attack_knockback,Base:0.6}]}
execute at @e[type=minecraft:enderman,tag=p1] unless entity @a[scores={randome=1}] run summon zombie ~ ~ ~ {Silent:1b,Team:"noname",DeathLootTable:"starter:entities/behemothloot",Health:50f,Tags:["behemoth"],Passengers:[{id:"minecraft:guardian",Silent:1b,DeathLootTable:"/",Health:50000f,Tags:["behemothlazer"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500000}]}],CustomName:'{"text":"Behemoth"}',Attributes:[{Name:generic.max_health,Base:50},{Name:generic.attack_damage,Base:6},{Name:generic.attack_knockback,Base:0.6}]}
execute at @e[type=minecraft:enderman,tag=p1] run summon zombie ~ ~ ~ {Silent:1b,Team:"noname",DeathLootTable:"starter:entities/behemothloot",Health:50f,Tags:["behemoth"],Passengers:[{id:"minecraft:guardian",Silent:1b,DeathLootTable:"/",Health:50000f,Tags:["behemothlazer"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:0b,Marker:0b,Invisible:1b,NoBasePlate:1b,Tags:["deathbe"],Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Tags:["becrystal"]}]}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:500000}]}],CustomName:'{"text":"Behemoth"}',Attributes:[{Name:generic.max_health,Base:50},{Name:generic.attack_damage,Base:6},{Name:generic.attack_knockback,Base:0.6}]}
execute at @e[type=minecraft:enderman,tag=p1] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:fire
kill @e[type=minecraft:enderman,tag=p1]

execute at @a unless entity @e[type=ender_dragon] run tag @e[type=minecraft:enderman,tag=!found,distance=16] add found2
scoreboard players set @a countglider 0
execute as @e[type=minecraft:enderman,tag=!found2] unless entity @e[type=ender_dragon] run scoreboard players add @a countglider 1
execute if entity @a[scores={countglider=50..}] unless entity @e[type=ender_dragon] run tag @e[type=minecraft:enderman,tag=!found2,limit=1,sort=random] add p2
execute if entity @a[scores={countglider=50..}] unless entity @e[type=ender_dragon] run tag @e[type=minecraft:enderman,tag=!found2] add found2
execute at @e[type=minecraft:enderman,tag=p2] unless entity @e[type=ender_dragon] run summon minecraft:donkey ~ ~3 ~ {NoGravity:1b,Team:"noname",Tags:["glider"],CustomName:'{"text":"Glider"}',Silent:1b,Motion:[0.0,0.0,0.1],Attributes:[{Name:generic.movement_speed,Base:0.75}]}
kill @e[type=minecraft:enderman,tag=p2]