#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Gravitance s.cast_time
scoreboard players operation @s m.spell.power = Gravitance s.power
function spells:gravitance/__generated__/block/274
execute if score Gravitance s.type1 matches 1 run function spells:gravitance/__generated__/block/275
execute if score Gravitance s.type2 matches 1 run function spells:gravitance/__generated__/block/277
execute if score Gravitance s.type3 matches 1 run function spells:gravitance/__generated__/block/279
execute if score Gravitance s.type4 matches 1 run function spells:gravitance/__generated__/block/281
execute if score Gravitance s.type5 matches 1 run function spells:gravitance/__generated__/block/283
execute if score Gravitance s.type6 matches 1 run function spells:gravitance/__generated__/block/285
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:gravitance/__generated__/block/287
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:gravitance/__generated__/block/289
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5