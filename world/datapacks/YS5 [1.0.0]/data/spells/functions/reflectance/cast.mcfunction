#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Reflectance s.cast_time
scoreboard players operation @s m.spell.power = Reflectance s.power
function spells:reflectance/__generated__/block/309
execute if score Reflectance s.type1 matches 1 run function spells:reflectance/__generated__/block/310
execute if score Reflectance s.type2 matches 1 run function spells:reflectance/__generated__/block/312
execute if score Reflectance s.type3 matches 1 run function spells:reflectance/__generated__/block/314
execute if score Reflectance s.type4 matches 1 run function spells:reflectance/__generated__/block/316
execute if score Reflectance s.type5 matches 1 run function spells:reflectance/__generated__/block/318
execute if score Reflectance s.type6 matches 1 run function spells:reflectance/__generated__/block/320
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:reflectance/__generated__/block/322
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:reflectance/__generated__/block/324
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5