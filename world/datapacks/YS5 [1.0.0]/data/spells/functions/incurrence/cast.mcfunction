#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Incurrence s.cast_time
scoreboard players operation @s m.spell.power = Incurrence s.power
function spells:incurrence/__generated__/block/222
execute if score Incurrence s.type1 matches 1 run function spells:incurrence/__generated__/block/223
execute if score Incurrence s.type2 matches 1 run function spells:incurrence/__generated__/block/225
execute if score Incurrence s.type3 matches 1 run function spells:incurrence/__generated__/block/227
execute if score Incurrence s.type4 matches 1 run function spells:incurrence/__generated__/block/229
execute if score Incurrence s.type5 matches 1 run function spells:incurrence/__generated__/block/231
execute if score Incurrence s.type6 matches 1 run function spells:incurrence/__generated__/block/233
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:incurrence/__generated__/block/235
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:incurrence/__generated__/block/237
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5