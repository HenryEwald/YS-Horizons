#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation 1 temp = @s m.resonance.resistance
scoreboard players operation 1 temp *= #60000 const
scoreboard players operation 1 temp /= #100 const
scoreboard players set 0 temp 60000
scoreboard players operation 0 temp -= 1 temp
scoreboard players operation 2 temp = @s m.global.resistance
scoreboard players operation 2 temp *= #60000 const
scoreboard players operation 2 temp /= #100 const
scoreboard players operation 0 temp -= 2 temp
scoreboard players operation @s ncd_damage = 0 temp
scoreboard players set @s ncd_damagetype 5
function ncdamage:apply_changes