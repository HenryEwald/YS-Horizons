#built using mc-build (https://github.com/mc-build/mc-build)

execute at @s facing entity @e[tag=Gravitance,tag=projectile,limit=1,distance=6..9,sort=nearest] feet run tp @s ^ ^ ^0.4
execute at @s facing entity @e[tag=Gravitance,tag=projectile,limit=1,distance=..5,sort=nearest] feet run tp @s ^ ^ ^0.2
execute at @s[type=#nyctocosm:livingthings] if entity @e[tag=Gravitance,tag=projectile,distance=3..6] run function spells:__generated__/block/69