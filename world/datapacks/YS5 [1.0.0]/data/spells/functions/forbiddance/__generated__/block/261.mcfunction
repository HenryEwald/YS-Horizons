#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation subtrahend value = @s m.spell.cast_time
scoreboard players operation subtrahend value *= @s m.resonance.speed
scoreboard players operation subtrahend value /= 100 value
scoreboard players operation @s m.spell.cast_time -= subtrahend value
execute if score @s m.spell.cast_time matches ..0 run scoreboard players set @s m.spell.cast_time 0
scoreboard players reset subtrahend value
scoreboard players operation @s m.spell.power += @s m.resonance.power
execute as @s[tag=!tellrawed] if score DisplayCastMessage value matches 1 run function spells:forbiddance/__generated__/block/262