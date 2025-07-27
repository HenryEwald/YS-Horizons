#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Evanescence s.cast_time
scoreboard players operation @s m.spell.power = Evanescence s.power
function spells:evanescence/__generated__/block/205
execute if score Evanescence s.type1 matches 1 run function spells:evanescence/__generated__/block/206
execute if score Evanescence s.type2 matches 1 run function spells:evanescence/__generated__/block/208
execute if score Evanescence s.type3 matches 1 run function spells:evanescence/__generated__/block/210
execute if score Evanescence s.type4 matches 1 run function spells:evanescence/__generated__/block/212
execute if score Evanescence s.type5 matches 1 run function spells:evanescence/__generated__/block/214
execute if score Evanescence s.type6 matches 1 run function spells:evanescence/__generated__/block/216
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:evanescence/__generated__/block/218
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:evanescence/__generated__/block/220
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5