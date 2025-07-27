#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Vacance s.cast_time
scoreboard players operation @s m.spell.power = Vacance s.power
function spells:vacance/__generated__/block/421
execute if score Vacance s.type1 matches 1 run function spells:vacance/__generated__/block/422
execute if score Vacance s.type2 matches 1 run function spells:vacance/__generated__/block/424
execute if score Vacance s.type3 matches 1 run function spells:vacance/__generated__/block/426
execute if score Vacance s.type4 matches 1 run function spells:vacance/__generated__/block/428
execute if score Vacance s.type5 matches 1 run function spells:vacance/__generated__/block/430
execute if score Vacance s.type6 matches 1 run function spells:vacance/__generated__/block/432
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:vacance/__generated__/block/434
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:vacance/__generated__/block/436
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5