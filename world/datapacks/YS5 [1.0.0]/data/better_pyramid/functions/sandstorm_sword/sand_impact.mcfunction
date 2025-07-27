playsound block.sand.fall player @a ~ ~ ~ 1 2
particle item sand ~ ~ ~ .2 .2 .2 .2 20 force
effect give @e[type=#better_pyramid:mobs, distance=..5] levitation 1 2 true
effect give @e[type=#better_pyramid:undead, distance=..5] instant_health
effect give @e[type=#better_pyramid:living, distance=..5] instant_damage
scoreboard players add @s sand_life 50