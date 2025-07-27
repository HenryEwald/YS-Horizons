#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Resistance s.cast_time
scoreboard players operation @s m.spell.power = Resistance s.power
function spells:resistance/__generated__/block/383
execute if score Resistance s.type1 matches 1 run function spells:resistance/__generated__/block/384
execute if score Resistance s.type2 matches 1 run function spells:resistance/__generated__/block/386
execute if score Resistance s.type3 matches 1 run function spells:resistance/__generated__/block/388
execute if score Resistance s.type4 matches 1 run function spells:resistance/__generated__/block/390
execute if score Resistance s.type5 matches 1 run function spells:resistance/__generated__/block/392
execute if score Resistance s.type6 matches 1 run function spells:resistance/__generated__/block/394
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:resistance/__generated__/block/396
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:resistance/__generated__/block/398
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5