#built using mc-build (https://github.com/mc-build/mc-build)

tag @s remove success
execute at @s unless entity @e[tag=spell,tag=origin,tag=plane,distance=..2] run function spells:__generated__/block/147