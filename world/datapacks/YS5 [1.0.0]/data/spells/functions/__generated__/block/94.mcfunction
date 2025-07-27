#built using mc-build (https://github.com/mc-build/mc-build)

execute at @s run tp @s ^ ^ ^0.5
execute if score @s spelltimer matches ..0 run kill @s
execute at @s unless block ~ ~ ~ #nyctocosm:passthrough run kill @s
execute at @s run tp @e[tag=Incandescence,tag=particle_emitter,tag=matchedid] ~ ~ ~
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep
execute store result score UUID0 value run scoreboard players get @s PUUID0
execute store result score UUID1 value run scoreboard players get @s PUUID1
execute store result score UUID2 value run scoreboard players get @s PUUID2
execute store result score UUID3 value run scoreboard players get @s PUUID3
execute at @s as @e[distance=..3,tag=spell,tag=reflector] run function spells:__generated__/block/95
execute at @s if entity @e[tag=spell,tag=!matchedid,tag=reflector,distance=..3] run function spells:__generated__/block/97
tag @e[tag=spell,tag=reflector,distance=..3] remove matchedid
execute at @s at @e[type=#nyctocosm:livingthings,distance=..3] run function ncdamage:playermarkerdamage
execute at @s run scoreboard players operation @e[type=#nyctocosm:livingthings,distance=..3] ncd_damage = @s s.damage
execute at @s as @e[type=#nyctocosm:livingthings,distance=..3] at @s run function spells:__generated__/block/100
execute at @s if entity @e[type=#nyctocosm:livingthings,distance=..3] run kill @s
execute as @e[tag=Incandescence,tag=particle_emitter,tag=matchedid] at @s run function spells:__generated__/block/101