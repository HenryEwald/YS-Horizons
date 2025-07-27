#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation TEMP s.damage = @s s.damage
execute at @s rotated as @e[tag=spell,tag=reflector,distance=..3,limit=1,sort=nearest] positioned as @s run function spells:resonance/__generated__/block/202
execute at @s as @e[tag=reflector,tag=spell,distance=..3] at @s run function spells:resonance/__generated__/block/203