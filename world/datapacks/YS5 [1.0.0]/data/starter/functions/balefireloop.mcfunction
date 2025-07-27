execute at @e[tag=deathd,type=blaze,scores={random=1}] unless entity @e[tag=balefire,type=blaze,distance=..1.5] run playsound minecraft:entity.balefire.death hostile @a ~ ~ ~ 0.5 1 0
execute at @e[tag=deathd,type=blaze,scores={random=2}] unless entity @e[tag=balefire,type=blaze,distance=..1.5] run playsound minecraft:entity.balefire.death hostile @a ~ ~ ~ 0.5 0.9 0
execute at @e[tag=deathd,type=blaze,scores={random=3}] unless entity @e[tag=balefire,type=blaze,distance=..1.5] run playsound minecraft:entity.balefire.death hostile @a ~ ~ ~ 0.5 1.1 0

execute at @e[tag=balefire,type=blaze,scores={random=1}] unless entity @e[tag=deathd,type=blaze,distance=..1.5] run playsound minecraft:entity.balefire.death hostile @a ~ ~ ~ 0.5 1 0
execute at @e[tag=balefire,type=blaze,scores={random=2}] unless entity @e[tag=deathd,type=blaze,distance=..1.5] run playsound minecraft:entity.balefire.death hostile @a ~ ~ ~ 0.5 0.9 0
execute at @e[tag=balefire,type=blaze,scores={random=3}] unless entity @e[tag=deathd,type=blaze,distance=..1.5] run playsound minecraft:entity.balefire.death hostile @a ~ ~ ~ 0.5 1.1 0

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=deathd,type=blaze,distance=..1.5] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,Duration:144000,Tags:["clear"]}
execute at @e[tag=deathd,type=blaze] unless entity @e[tag=balefire,type=blaze,distance=..1.5] run summon area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,Duration:144000,Tags:["clear"]}

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=deathd,type=blaze,distance=..1.5] run kill @e[tag=balefire,type=blaze,sort=nearest,limit=1]
execute at @e[tag=deathd,type=blaze] unless entity @e[tag=balefire,type=blaze,distance=..1.5] run kill @e[tag=deathd,type=blaze,sort=nearest,limit=1]

execute at @a if entity @e[tag=balefire,type=blaze] run kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}}]

execute at @e[type=blaze] run team join mobd @e[type=blaze]

execute at @e[tag=balefire,type=blaze] if entity @e[type=small_fireball,distance=..1.6] run tag @e[type=small_fireball,distance=..1.6] add ballin
execute at @e[tag=deathd,type=blaze] if entity @e[type=small_fireball,distance=..1.6] run tag @e[type=small_fireball,distance=..1.6] add ballin
execute at @e[type=small_fireball,tag=ballin] unless entity @e[type=small_fireball,tag=notballin,distance=..0.1] run playsound minecraft:entity.balefire.shoot hostile @a ~ ~ ~ 2 1 0
execute at @e[type=small_fireball,tag=ballin] run tag @e[type=small_fireball,distance=..1.6] add notballin
execute at @e[type=small_fireball,tag=ballin] run tag @e[type=small_fireball,tag=ballin] remove ballin

execute at @e[tag=fireball] if entity @e[type=fireball,distance=..5] run tag @e[type=fireball,distance=..5] add ballin
execute at @e[type=fireball,tag=ballin] unless entity @e[type=fireball,tag=notballin,distance=..0.1] run playsound minecraft:entity.balefire.shootbig hostile @a ~ ~ ~ 2 0.7 0
execute at @e[type=fireball,tag=ballin] run tag @e[type=fireball,distance=..0.1] add notballin
execute at @e[type=fireball,tag=ballin] run tag @e[type=fireball,tag=ballin] remove ballin

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=stun,distance=..0.1] if entity @e[type=arrow,distance=..4.3] run tag @e[type=arrow,distance=..4.3] add ballin
execute at @e[tag=deathd,type=blaze] unless entity @e[tag=stun,distance=..1.6] if entity @e[type=arrow,distance=..4.3] run tag @e[type=arrow,distance=..4.3] add ballin
execute at @e[type=arrow,tag=ballin] unless entity @e[type=arrow,tag=notballin,distance=..0.1] run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 2 1 0
execute at @e[type=arrow,tag=ballin] run tag @e[type=arrow,sort=nearest,limit=1] add notballin
execute at @e[type=arrow,tag=ballin] run tag @e[type=arrow,tag=ballin] remove ballin

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=stun,distance=..0.1] if entity @e[type=trident,distance=..4.3] run tag @e[type=trident,distance=..4.3] add ballin
execute at @e[tag=deathd,type=blaze] unless entity @e[tag=stun,distance=..1.6] if entity @e[type=trident,distance=..4.3] run tag @e[type=trident,distance=..4.3] add ballin
execute at @e[type=trident,tag=ballin] unless entity @e[type=trident,tag=notballin,distance=..0.1] run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 2 1 0
execute at @e[type=trident,tag=ballin] run tag @e[type=trident,sort=nearest,limit=1] add notballin
execute at @e[type=trident,tag=ballin] run tag @e[type=trident,tag=ballin] remove ballin

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=stun,distance=..0.1] if entity @e[type=snowball,distance=..3] run tag @e[type=snowball,distance=..3] add ballin
execute at @e[tag=deathd,type=blaze] unless entity @e[tag=stun,distance=..1.6] if entity @e[type=snowball,distance=..3] run tag @e[type=snowball,distance=..3] add ballin
execute at @e[type=snowball,tag=ballin] unless entity @e[type=snowball,tag=notballin,distance=..0.1] run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 2 1 0
execute at @e[type=snowball,tag=ballin] run tag @e[type=snowball,sort=nearest,limit=1] add notballin
execute at @e[type=snowball,tag=ballin] run tag @e[type=snowball,tag=ballin] remove ballin

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=stun,distance=..0.1] if entity @e[type=egg,distance=..3] run tag @e[type=egg,distance=..3] add ballin
execute at @e[tag=deathd,type=blaze] unless entity @e[tag=stun,distance=..1.6] if entity @e[type=egg,distance=..3] run tag @e[type=egg,distance=..3] add ballin
execute at @e[type=egg,tag=ballin] unless entity @e[type=egg,tag=notballin,distance=..0.1] run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 2 1 0
execute at @e[type=egg,tag=ballin] run tag @e[type=egg,sort=nearest,limit=1] add notballin
execute at @e[type=egg,tag=ballin] run tag @e[type=egg,tag=ballin] remove ballin

execute at @e[tag=balefire,type=blaze] if entity @e[tag=balefire,type=blaze,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @e[tag=deathd,type=blaze] minecraft:instant_damage 1 0 true
execute at @e[tag=deathd,type=blaze] if entity @e[tag=deathd,type=blaze,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @e[tag=balefire,type=blaze] minecraft:instant_damage 1 0 true

execute at @e[nbt={ActiveEffects:[{Id:21b}]}] if entity @e[tag=shockwave] run summon small_fireball ~ ~3 ~ {life:3,direction:[0.0,-20.0,0.0],power:[0.0,-20.0,0.0]}

execute at @e[tag=balefire,type=blaze,scores={mobd=430}] run playsound minecraft:entity.balefire.charging hostile @a ~ ~ ~ 2 1 0
execute at @e[tag=shockwave,nbt={Age:1}] run playsound minecraft:entity.balefire.shockwave hostile @a ~ ~ ~ 2 1 0

execute at @e[tag=balefire,type=blaze] unless entity @e[tag=stun,distance=..0.1,sort=nearest,limit=1] run scoreboard players add @e[tag=balefire,type=blaze,sort=nearest,limit=1] mobd 1
execute at @e[tag=balefire,type=blaze,scores={mobd=430..},sort=nearest,limit=1] run particle minecraft:lava ~ ~1.5 ~ 0.1 0.75 0.1 0 1 force @a
execute at @e[tag=balefire,type=blaze,scores={mobd=490..},sort=nearest,limit=1] if block ~ ~-2 ~ minecraft:air run tp @e[tag=deathd,type=blaze,sort=nearest,limit=1] ~ ~-2 ~
execute at @e[tag=balefire,type=blaze,scores={mobd=500},sort=nearest,limit=1] run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 2 5 force @a
execute at @e[tag=balefire,type=blaze,scores={mobd=500},sort=nearest,limit=1] run particle minecraft:large_smoke ~ ~ ~ 0.1 0 0.1 0.5 1000 force @a
execute at @e[tag=balefire,type=blaze,scores={mobd=500},sort=nearest,limit=1] run summon area_effect_cloud ~ ~-1.25 ~ {Particle:"flame",Radius:1f,RadiusPerTick:3f,Duration:6,Tags:["shockwave"],Potion:"minecraft:empty",Effects:[{Id:21b,Amplifier:1b,Duration:2}]}
execute at @e[tag=balefire,type=blaze] run scoreboard players set @e[tag=balefire,type=blaze,scores={mobd=500..},sort=nearest,limit=1] mobd 0

execute at @e[tag=balefire,type=blaze] if entity @e[tag=balefire,type=blaze,scores={mobd2=10}] run scoreboard players add @e[tag=balefire,type=blaze] mobd2 1
execute at @e[tag=balefire,type=blaze] unless entity @e[tag=balefire,type=blaze,scores={mobd=430..},distance=..0.1] if entity @e[type=small_fireball,distance=..2] unless entity @e[tag=stun,distance=..0.1] run scoreboard players add @e[tag=balefire,type=blaze,distance=..0.1] mobd2 1
execute at @e[tag=deathd,type=blaze,sort=nearest,limit=1] run tp @e[tag=fireball,sort=nearest,limit=1] @e[tag=deathd,type=blaze,distance=..0.1,limit=1]
execute at @e[tag=fireball] run tp @e[tag=fireball] ~ ~ ~ facing entity @p eyes
execute at @e[tag=balefire,type=blaze,scores={mobd2=10}] run summon ghast ~ ~100 ~ {Silent:1b,Invulnerable:1b,Team:"nocollision",DeathLootTable:"/",Health:999999f,Tags:["fireball"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:199999980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:999999}]}
execute at @e[tag=fireball] if entity @e[type=fireball,distance=..5] run kill @e[tag=fireball,sort=nearest,limit=1]
execute at @e[tag=fireball] run particle minecraft:flame ~ ~1.5 ~ 0.5 0.75 0.5 0.01 6 force @a
execute at @e[tag=fireball,distance=..0.1] if entity @e[type=small_fireball,distance=..3] run data merge entity @e[tag=fireball,sort=nearest,limit=1] {NoAI:1b}
execute at @e[tag=fireball,distance=..0.1] unless entity @e[type=small_fireball,distance=..3] run data merge entity @e[tag=fireball,sort=nearest,limit=1] {NoAI:0b}
execute at @e[tag=balefire,type=blaze,scores={mobd2=75}] run kill @e[tag=fireball,limit=1,distance=..0.1]
execute at @e[tag=balefire,type=blaze] run scoreboard players set @e[tag=balefire,type=blaze,scores={mobd2=75..},distance=..0.1] mobd2 0

execute at @e[tag=balefire,type=blaze] if entity @e[type=fireball,distance=..5] run tag @e[tag=balefire,type=blaze,sort=nearest,limit=1] add incoming
execute at @e[tag=deathd,type=blaze] if entity @e[type=fireball,distance=..5] run data merge entity @e[tag=deathd,type=blaze,sort=nearest,limit=1] {Invulnerable:0b}
execute at @e[tag=deathd,type=blaze] unless entity @e[type=fireball,distance=..5] run data merge entity @e[tag=deathd,type=blaze,sort=nearest,limit=1] {Invulnerable:1b}
execute at @e[tag=balefire,type=blaze] if entity @e[type=fireball,distance=..5] run data merge entity @e[tag=balefire,type=blaze,sort=nearest,limit=1] {Invulnerable:0b}
execute at @e[tag=balefire,type=blaze] unless entity @e[type=fireball,distance=..5] run data merge entity @e[tag=balefire,type=blaze,sort=nearest,limit=1] {Invulnerable:1b}
execute at @e[tag=deathd,type=blaze] if entity @e[tag=deathd,type=blaze,nbt={HurtTime:10s}] if entity @e[type=fireball,distance=..3] run tag @e[tag=incoming,sort=nearest,limit=1] add stun
execute at @e[tag=balefire,type=blaze] if entity @e[tag=incoming,nbt={HurtTime:10s}] run tag @e[tag=incoming,sort=nearest,limit=1] add stun
execute at @e[tag=incoming] unless entity @e[type=fireball,distance=..3] run tag @e[tag=incoming,sort=nearest,limit=1] remove incoming

execute at @e[tag=balefire,type=blaze] if entity @e[tag=stun,sort=nearest,limit=1] run scoreboard players add @e[tag=stun,sort=nearest,limit=1] mobdstun 1
execute at @e[tag=stun] run tp @e[tag=stun,sort=nearest,limit=1] ~ ~ ~ facing ~1 ~-1 ~
execute at @e[tag=stun,scores={mobdstun=1..}] run data merge entity @e[tag=balefire,type=blaze,sort=nearest,limit=1] {Invulnerable:0b}
execute at @e[tag=stun,scores={mobdstun=1..}] run data merge entity @e[tag=deathd,type=blaze,sort=nearest,limit=1] {Invulnerable:0b}
execute at @e[tag=stun,scores={mobdstun=1..}] run data merge entity @e[tag=balefire,type=blaze,sort=nearest,limit=1] {NoAI:1b}
execute at @e[tag=stun,scores={mobdstun=1..}] run data merge entity @e[tag=deathd,type=blaze,sort=nearest,limit=1] {NoAI:1b}
execute at @e[tag=stun,scores={mobdstun=1..}] run particle minecraft:effect ~ ~2.75 ~ 0.1 0.1 0.1 0.1 1 force @a
execute at @e[tag=stun,scores={mobdstun=200}] run data merge entity @e[tag=balefire,type=blaze,sort=nearest,limit=1] {Invulnerable:1b}
execute at @e[tag=stun,scores={mobdstun=200}] run data merge entity @e[tag=deathd,type=blaze,sort=nearest,limit=1] {Invulnerable:1b}
execute at @e[tag=stun,scores={mobdstun=200}] run data merge entity @e[tag=balefire,type=blaze,sort=nearest,limit=1] {NoAI:0b}
execute at @e[tag=stun,scores={mobdstun=200}] run data merge entity @e[tag=deathd,type=blaze,sort=nearest,limit=1] {NoAI:0b}
execute at @e[tag=stun,scores={mobdstun=..200}] run scoreboard players set @e[tag=balefire,type=blaze,sort=nearest,limit=1,scores={mobdstun=..200}] mobd2 0
execute at @e[tag=stun,scores={mobdstun=..200}] run scoreboard players set @e[tag=balefire,type=blaze,sort=nearest,limit=1,scores={mobdstun=..200}] mobd 0
execute at @e[tag=stun,scores={mobdstun=200}] run scoreboard players set @e[tag=balefire,type=blaze,sort=nearest,limit=1,scores={mobdstun=200}] mobd 430
execute at @e[tag=stun,scores={mobdstun=200}] run tag @e[tag=stun,scores={mobdstun=200}] remove stun
scoreboard players set @e[tag=stun,scores={mobdstun=200..}] mobdstun 0

execute at @e[tag=balefire,type=blaze] run scoreboard players add @e[tag=balefire,type=blaze,limit=1,sort=nearest] random 1
scoreboard players set @e[tag=balefire,type=blaze,scores={random=4..}] random 1
execute at @e[tag=deathd,type=blaze] run scoreboard players add @e[tag=deathd,type=blaze,limit=1,sort=nearest] random 1
scoreboard players set @e[tag=deathd,type=blaze,scores={random=4..}] random 1

execute at @e[tag=balefire,type=blaze] run scoreboard players add @e[tag=balefire,type=blaze,limit=1,sort=random] ambient 3
execute at @e[tag=balefire,type=blaze,scores={random=1,ambient=600}] unless entity @e[tag=balefire,type=blaze,scores={mobd=450..},distance=..0.1] run playsound minecraft:entity.balefire.ambient hostile @a ~ ~ ~ 0.5 1 0
execute at @e[tag=balefire,type=blaze,scores={random=2,ambient=600}] unless entity @e[tag=balefire,type=blaze,scores={mobd=450..},distance=..0.1] run playsound minecraft:entity.balefire.ambient hostile @a ~ ~ ~ 0.5 1.1 0
execute at @e[tag=balefire,type=blaze,scores={random=3,ambient=600}] unless entity @e[tag=balefire,type=blaze,scores={mobd=450..},distance=..0.1] run playsound minecraft:entity.balefire.ambient hostile @a ~ ~ ~ 0.5 0.9 0
scoreboard players set @e[tag=balefire,type=blaze,scores={ambient=600..}] ambient 0

execute at @e[tag=balefire,type=blaze,nbt={HurtTime:10s},scores={random=1}] run playsound minecraft:entity.balefire.hurt hostile @a ~ ~ ~ 0.5 1 0
execute at @e[tag=balefire,type=blaze,nbt={HurtTime:10s},scores={random=2}] run playsound minecraft:entity.balefire.hurt hostile @a ~ ~ ~ 0.5 0.9 0
execute at @e[tag=balefire,type=blaze,nbt={HurtTime:10s},scores={random=3}] run playsound minecraft:entity.balefire.hurt hostile @a ~ ~ ~ 0.5 1.1 0

execute at @e[tag=balefire,type=blaze] run scoreboard players add @e[tag=balefire,type=blaze,limit=1,sort=random] ambient2 1
execute at @e[tag=balefire,type=blaze,scores={random=1,ambient2=50}] run playsound minecraft:entity.balefire.burn hostile @a ~ ~ ~ 5 0.1 0
execute at @e[tag=balefire,type=blaze,scores={random=2,ambient2=50}] run playsound minecraft:entity.balefire.burn hostile @a ~ ~ ~ 5 0.2 0
execute at @e[tag=balefire,type=blaze,scores={random=3,ambient2=50}] run playsound minecraft:entity.balefire.burn hostile @a ~ ~ ~ 5 0 0
scoreboard players set @e[tag=balefire,type=blaze,scores={ambient2=50..}] ambient2 0

execute at @a unless entity @e[tag=balefire,type=blaze] unless entity @e[tag=clear] run tag @e[type=minecraft:blaze,tag=!found,distance=16,tag=!balefire,tag=!deathd] add found
execute unless entity @e[tag=balefire,type=blaze] run scoreboard players set @a countbalefire 0
execute as @e[type=minecraft:blaze,tag=!found,tag=!balefire,tag=!deathd] unless entity @e[tag=balefire,type=blaze] unless entity @e[tag=clear] run scoreboard players add @a countbalefire 1
execute if entity @a[scores={countbalefire=1..}] unless entity @e[tag=balefire,type=blaze] unless entity @e[tag=clear] run tag @e[type=minecraft:blaze,tag=!found,limit=1,sort=random,tag=!balefire,tag=!deathd] add pee
execute if entity @a[scores={countbalefire=1..}] unless entity @e[tag=balefire,type=blaze] unless entity @e[tag=clear] run tag @e[type=minecraft:blaze,tag=!found,tag=!balefire,tag=!deathd] add found
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=balefire,type=blaze] unless entity @e[tag=clear] run summon blaze ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"mobd",DeathLootTable:"/",Health:200f,Tags:["deathd"],Passengers:[{id:"minecraft:blaze",Silent:1b,Invulnerable:1b,Team:"mobd",DeathLootTable:"starter:entities/balefireloot",Health:200f,Tags:["balefire"],CustomName:'{"text":"BalefireHead"}',PersistenceRequired:1b,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.knockback_resistance,Base:0.9},{Name:generic.attack_knockback,Base:5}]}],CustomName:'{"text":"Balefire"}',PersistenceRequired:1b,Attributes:[{Name:generic.max_health,Base:200},{Name:generic.knockback_resistance,Base:0.9},{Name:generic.attack_knockback,Base:5}]}
execute if entity @a[scores={countbalefire=1..}] unless entity @e[tag=balefire,type=blaze] unless entity @e[tag=clear] run tag @e[type=minecraft:blaze,tag=!found,tag=!balefire,tag=!deathd] add found
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=clear] run summon blaze ~ ~ ~1
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=clear] run summon blaze ~ ~ ~-1
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=clear] run summon blaze ~1 ~ ~
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=clear] run summon blaze ~-1 ~ ~
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=clear] run summon blaze ~1 ~ ~1
execute at @e[type=minecraft:blaze,tag=pee] unless entity @e[tag=clear] run summon blaze ~-1 ~ ~-1
execute at @e[type=blaze] unless entity @e[tag=clear] run kill @e[type=minecraft:blaze,tag=pee]