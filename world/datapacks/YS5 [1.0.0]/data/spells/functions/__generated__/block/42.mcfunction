#built using mc-build (https://github.com/mc-build/mc-build)

execute store result score UUID0 value run scoreboard players get @s PUUID0
execute store result score UUID1 value run scoreboard players get @s PUUID1
execute store result score UUID2 value run scoreboard players get @s PUUID2
execute store result score UUID3 value run scoreboard players get @s PUUID3
execute at @s as @e[tag=spell,tag=reflector] run function spells:__generated__/block/43
summon armor_stand ^ ^-100 ^2 {Pose:{Head:[90f,0f,0f]},HasVisualFire:1b,Marker:1b,Invisible:1b,Tags:["spellcircle","Resonance","justsummoned"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:8}}]}
execute at @s as @e[tag=spellcircle,tag=justsummoned] run function spells:__generated__/block/45
tag @s remove Resonance
scoreboard players reset @s spelltimer
function spells:resonance/raycast
tag @e remove matchedid
kill @s