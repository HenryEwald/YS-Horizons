#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation TEMP s.damage = @s s.damage
execute at @s rotated as @e[tag=spell,tag=reflector,distance=..3,sort=nearest,limit=1] positioned as @s run function spells:__generated__/block/62
execute at @s as @e[tag=reflector,tag=spell,distance=..3] at @s run function spells:__generated__/block/63