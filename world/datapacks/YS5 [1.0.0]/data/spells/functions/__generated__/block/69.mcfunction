#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation @s ncd_damage = @e[tag=Gravitance,tag=projectile,distance=..6] s.damage
scoreboard players operation @s ncd_damage *= 1000 value
scoreboard players operation 1 temp = @s ncd_damage
scoreboard players operation 1 temp *= @s m.void.resistance
scoreboard players operation 1 temp /= #100 const
scoreboard players operation 0 temp = @s ncd_damage
scoreboard players operation 0 temp -= 1 temp
scoreboard players operation 2 temp = @s ncd_damage
scoreboard players operation 2 temp *= @s m.global.resistance
scoreboard players operation 2 temp /= #100 const
scoreboard players operation 0 temp -= 2 temp
scoreboard players operation @s ncd_damage = 0 temp
function ncdamage:apply_changes
execute at @s as @e[tag=Gravitance,tag=projectile,distance=..6,sort=nearest,limit=1] run function ncdamage:playermarkerdamage