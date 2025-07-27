execute if score @s sand_agro matches 1 anchored eyes facing entity @e[type=#better_pyramid:mobs, limit=1, sort=nearest] eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1 ~ ~5
execute if score @s sand_agro matches 1 run particle falling_dust sand ~ ~1 ~ .1 .1 .1 1 1 force
execute if score @s sand_agro matches 1 run playsound ambient.underwater.loop.additions.ultra_rare player @a ~ ~ ~ .2 2


execute unless score @s sand_agro matches 1 anchored eyes facing entity @p eyes positioned ^1 ^-.2 ^.7 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute unless score @s sand_agro matches 1 run playsound minecraft:ambient.basalt_deltas.additions player @a ~ ~ ~ .5 2
#particle dust_color_transition 1 .9 .7 1 1 1 0 ~ ~ ~ .1 .1 .1 0 10 force

scoreboard players add @s sand_life 1
execute if score @s sand_life matches 600.. run kill @s


execute if score @s sand_agro matches 1 anchored eyes if entity @e[distance=..5, type=#better_pyramid:mobs] run function better_pyramid:sandstorm_sword/sand_damage
execute if score @s sand_agro matches 1 anchored eyes if entity @e[distance=..1, type=#better_pyramid:mobs] run function better_pyramid:sandstorm_sword/sand_impact
