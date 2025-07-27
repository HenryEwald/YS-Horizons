#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Transmittance s.cast_time
scoreboard players operation @s m.spell.power = Transmittance s.power
function spells:transmittance/__generated__/block/400
execute if score Transmittance s.type1 matches 1 run function spells:transmittance/__generated__/block/401
execute if score Transmittance s.type2 matches 1 run function spells:transmittance/__generated__/block/403
execute if score Transmittance s.type3 matches 1 run function spells:transmittance/__generated__/block/405
execute if score Transmittance s.type4 matches 1 run function spells:transmittance/__generated__/block/407
execute if score Transmittance s.type5 matches 1 run function spells:transmittance/__generated__/block/409
execute if score Transmittance s.type6 matches 1 run function spells:transmittance/__generated__/block/411
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:transmittance/__generated__/block/413
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:transmittance/__generated__/block/415
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5