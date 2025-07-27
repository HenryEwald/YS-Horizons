#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Forbiddance s.cast_time
scoreboard players operation @s m.spell.power = Forbiddance s.power
function spells:forbiddance/__generated__/block/256
execute if score Forbiddance s.type1 matches 1 run function spells:forbiddance/__generated__/block/257
execute if score Forbiddance s.type2 matches 1 run function spells:forbiddance/__generated__/block/259
execute if score Forbiddance s.type3 matches 1 run function spells:forbiddance/__generated__/block/261
execute if score Forbiddance s.type4 matches 1 run function spells:forbiddance/__generated__/block/263
execute if score Forbiddance s.type5 matches 1 run function spells:forbiddance/__generated__/block/265
execute if score Forbiddance s.type6 matches 1 run function spells:forbiddance/__generated__/block/267
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:forbiddance/__generated__/block/269
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:forbiddance/__generated__/block/271
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5