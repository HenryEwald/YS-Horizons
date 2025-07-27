#built using mc-build (https://github.com/mc-build/mc-build)

execute store result score UUID0 value run data get entity @s data.UUID[0]
execute store result score UUID1 value run data get entity @s data.UUID[1]
execute store result score UUID2 value run data get entity @s data.UUID[2]
execute store result score UUID3 value run data get entity @s data.UUID[3]
execute as @e[tag=particle_emitter,tag=Incandescence] run function spells:__generated__/block/81
scoreboard players remove @s spelltimer 1
function spells:__generated__/block/83
function spells:__generated__/block/94
function spells:__generated__/block/104
tag @e remove matchedid