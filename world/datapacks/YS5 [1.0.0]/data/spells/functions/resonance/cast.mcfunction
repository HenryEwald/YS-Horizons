#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set 100 value 100
scoreboard players operation @s m.spell.cast_time = Resonance s.cast_time
scoreboard players operation @s m.spell.power = Resonance s.power
function spells:resonance/__generated__/block/183
execute if score Resonance s.type1 matches 1 run function spells:resonance/__generated__/block/184
execute if score Resonance s.type2 matches 1 run function spells:resonance/__generated__/block/186
execute if score Resonance s.type3 matches 1 run function spells:resonance/__generated__/block/188
execute if score Resonance s.type4 matches 1 run function spells:resonance/__generated__/block/190
execute if score Resonance s.type5 matches 1 run function spells:resonance/__generated__/block/192
execute if score Resonance s.type6 matches 1 run function spells:resonance/__generated__/block/194
scoreboard players reset 100 value
tag @s remove tellrawed
scoreboard players set @s[scores={m.spell.power=50..}] m.spell.power 50
scoreboard players operation SpellTempStat m.spell.cast_time = @s m.spell.cast_time
scoreboard players operation SpellTempStat m.spell.power = @s m.spell.power
data modify entity @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] data.UUID set from entity @s UUID
execute at @s as @e[tag=spell,tag=origin,tag=plane,sort=nearest,limit=1] run function spells:resonance/__generated__/block/196
particle minecraft:flash ~ ~1 ~ 0.2 0.2 0.2 0 5
tag @s add caster
execute positioned ~ ~1.625 ~ positioned ^ ^ ^5 run summon marker ~ ~ ~ {Tags:["spell","Resonance","shooter","justsummoned"]}
scoreboard players operation SpellTemp m.spell.cast_time = @s m.spell.cast_time
execute as @e[tag=justsummoned,tag=shooter] at @s run function spells:resonance/__generated__/block/198
execute as @e[tag=spell,tag=origin,limit=1,distance=..1,sort=nearest] at @s run function spells:resonance/__generated__/block/199
tag @s remove caster