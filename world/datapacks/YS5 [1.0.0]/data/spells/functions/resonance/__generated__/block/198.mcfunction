#built using mc-build (https://github.com/mc-build/mc-build)

execute rotated as @a[tag=caster] run tp @s ~ ~ ~ ~ ~
scoreboard players operation @s m.spell.cast_time = SpellTemp m.spell.cast_time
data modify entity @s data.UUID set from entity @a[tag=caster,limit=1,sort=nearest] UUID
execute store result score @s PUUID0 run data get entity @s data.UUID[0]
execute store result score @s PUUID1 run data get entity @s data.UUID[1]
execute store result score @s PUUID2 run data get entity @s data.UUID[2]
execute store result score @s PUUID3 run data get entity @s data.UUID[3]
tag @s remove justsummoned