#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players remove @s planehumtimer 1
execute as @s unless score @s planehumtimer matches 1.. run function spells:__generated__/block/6
execute as @s unless entity @a[distance=..3] run function spells:__generated__/block/7
tp @s ~ ~ ~ ~0.1 ~
execute unless entity @s[tag=s.casting] as @e[type=item,distance=..3] at @s run function spells:__generated__/block/8