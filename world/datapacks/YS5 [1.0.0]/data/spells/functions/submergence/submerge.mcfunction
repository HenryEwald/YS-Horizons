#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation @s s.damage = TEMP s.damage
tag @s add s.submerging
summon marker ~ ~-5 ~ {Tags:["spell","Submergence","tendril","justsummoned"]}
data modify entity @e[tag=justsummoned,tag=tendril,tag=Submergence,limit=1] data.UUID set from entity @s UUID
tag @e[tag=justsummoned,tag=tendril,tag=Submergence,limit=1] remove justsummoned
playsound nyctocosm:spells.impact.submergence master @a[distance=..50] ~ ~ ~ 10