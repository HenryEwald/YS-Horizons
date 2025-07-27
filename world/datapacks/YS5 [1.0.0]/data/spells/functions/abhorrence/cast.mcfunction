#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Abhorrence s.cast_time
scoreboard players operation @s m.spell.power = Abhorrence s.power
function spells:abhorrence/__generated__/block/238
execute if score Abhorrence s.type1 matches 1 run function spells:abhorrence/__generated__/block/239
execute if score Abhorrence s.type2 matches 1 run function spells:abhorrence/__generated__/block/241
execute if score Abhorrence s.type3 matches 1 run function spells:abhorrence/__generated__/block/243
execute if score Abhorrence s.type4 matches 1 run function spells:abhorrence/__generated__/block/245
execute if score Abhorrence s.type5 matches 1 run function spells:abhorrence/__generated__/block/247
execute if score Abhorrence s.type6 matches 1 run function spells:abhorrence/__generated__/block/249
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:abhorrence/__generated__/block/251
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:abhorrence/__generated__/block/253
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5