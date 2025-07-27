#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Subsistence s.cast_time
scoreboard players operation @s m.spell.power = Subsistence s.power
function spells:subsistence/__generated__/block/292
execute if score Subsistence s.type1 matches 1 run function spells:subsistence/__generated__/block/293
execute if score Subsistence s.type2 matches 1 run function spells:subsistence/__generated__/block/295
execute if score Subsistence s.type3 matches 1 run function spells:subsistence/__generated__/block/297
execute if score Subsistence s.type4 matches 1 run function spells:subsistence/__generated__/block/299
execute if score Subsistence s.type5 matches 1 run function spells:subsistence/__generated__/block/301
execute if score Subsistence s.type6 matches 1 run function spells:subsistence/__generated__/block/303
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:subsistence/__generated__/block/305
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:subsistence/__generated__/block/307
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5