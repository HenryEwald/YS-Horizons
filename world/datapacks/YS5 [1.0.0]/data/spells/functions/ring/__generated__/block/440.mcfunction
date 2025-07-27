#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation TEMP s.circle_timer = 0 value
summon armor_stand ~ ~ ~ {HasVisualFire:1b,Marker:1b,Invisible:1b,Tags:["spellcircle","Plane","justsummoned"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[tag=spellcircle,tag=justsummoned] at @s run function spells:ring/__generated__/block/441
scoreboard players reset TEMP s.circle_timer