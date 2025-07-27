#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Adamance s.cast_time
scoreboard players operation @s m.spell.power = Adamance s.power
function spells:adamance/__generated__/block/347
execute if score Adamance s.type1 matches 1 run function spells:adamance/__generated__/block/348
execute if score Adamance s.type2 matches 1 run function spells:adamance/__generated__/block/350
execute if score Adamance s.type3 matches 1 run function spells:adamance/__generated__/block/352
execute if score Adamance s.type4 matches 1 run function spells:adamance/__generated__/block/354
execute if score Adamance s.type5 matches 1 run function spells:adamance/__generated__/block/356
execute if score Adamance s.type6 matches 1 run function spells:adamance/__generated__/block/358
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:adamance/__generated__/block/360
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:adamance/__generated__/block/362
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5