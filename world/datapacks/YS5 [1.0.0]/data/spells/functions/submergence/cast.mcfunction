#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Submergence s.cast_time
scoreboard players operation @s m.spell.power = Submergence s.power
function spells:submergence/__generated__/block/329
execute if score Submergence s.type1 matches 1 run function spells:submergence/__generated__/block/330
execute if score Submergence s.type2 matches 1 run function spells:submergence/__generated__/block/332
execute if score Submergence s.type3 matches 1 run function spells:submergence/__generated__/block/334
execute if score Submergence s.type4 matches 1 run function spells:submergence/__generated__/block/336
execute if score Submergence s.type5 matches 1 run function spells:submergence/__generated__/block/338
execute if score Submergence s.type6 matches 1 run function spells:submergence/__generated__/block/340
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:submergence/__generated__/block/342
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:submergence/__generated__/block/344
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5