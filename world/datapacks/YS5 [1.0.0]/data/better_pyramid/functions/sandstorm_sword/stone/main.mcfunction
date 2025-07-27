scoreboard players add @s cutscene 1
execute if score @s cutscene matches 1 run particle enchant ~ ~1.5 ~ 0 0 0 1 100 force
execute if score @s cutscene matches 3 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 2
execute if score @s cutscene matches 5 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 1.8
execute if score @s cutscene matches 7 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 1.6
execute if score @s cutscene matches 9 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 1.4
execute if score @s cutscene matches 11 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 1.2
execute if score @s cutscene matches 13 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 1
execute if score @s cutscene matches 15 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .8
execute if score @s cutscene matches 17 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .6
execute if score @s cutscene matches 19 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .5
execute if score @s cutscene matches 21 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .4
execute if score @s cutscene matches 23 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .3
execute if score @s cutscene matches 25 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .2
execute if score @s cutscene matches 27 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 .1
execute if score @s cutscene matches 45 run playsound block.amethyst_block.step block @a ~ ~ ~ 2 0
execute if score @s cutscene matches 45 run playsound entity.item.break block @a ~ ~ ~ 2 0
execute if score @s cutscene matches 45 run particle falling_dust sand ~ ~.4 ~ .2 .2 .2 1 50 force

execute if score @s cutscene matches 45 run execute as @e[type=armor_stand, distance=..5, sort=nearest, limit=1] at @s run scoreboard players set @s cutscene 1
execute if score @s cutscene matches 45 run kill @s

#execute as @e[tag=sandstorm_in_stone] at @s run kill @e[type=minecraft:item, distance=..5, nbt={Item:{id:"minecraft:totem_of_undying", tag:{CustomModelData:17206}}, OnGround:1b}]
