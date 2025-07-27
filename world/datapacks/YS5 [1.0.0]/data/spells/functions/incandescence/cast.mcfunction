#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Incandescence s.cast_time
scoreboard players operation @s m.spell.power = Incandescence s.power
function spells:incandescence/__generated__/block/364
execute if score Incandescence s.type1 matches 1 run function spells:incandescence/__generated__/block/365
execute if score Incandescence s.type2 matches 1 run function spells:incandescence/__generated__/block/367
execute if score Incandescence s.type3 matches 1 run function spells:incandescence/__generated__/block/369
execute if score Incandescence s.type4 matches 1 run function spells:incandescence/__generated__/block/371
execute if score Incandescence s.type5 matches 1 run function spells:incandescence/__generated__/block/373
execute if score Incandescence s.type6 matches 1 run function spells:incandescence/__generated__/block/375
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:incandescence/__generated__/block/377
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:incandescence/__generated__/block/379
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5