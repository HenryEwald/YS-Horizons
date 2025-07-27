#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Luminescence s.cast_time
scoreboard players operation @s m.spell.power = Luminescence s.power
function spells:luminescence/__generated__/block/166
execute if score Luminescence s.type1 matches 1 run function spells:luminescence/__generated__/block/167
execute if score Luminescence s.type2 matches 1 run function spells:luminescence/__generated__/block/169
execute if score Luminescence s.type3 matches 1 run function spells:luminescence/__generated__/block/171
execute if score Luminescence s.type4 matches 1 run function spells:luminescence/__generated__/block/173
execute if score Luminescence s.type5 matches 1 run function spells:luminescence/__generated__/block/175
execute if score Luminescence s.type6 matches 1 run function spells:luminescence/__generated__/block/177
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:luminescence/__generated__/block/179
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5