
##items
scoreboard objectives add fungus minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time

#magic ankh
#dunestrider boots
#standstorm blade - like tik tok glock
#sandstorm in a bottle - terraria reference
#potion of khonsu
#jars



#initial rooms
#the prize of the whole dungeon... show it later
#smashable jars
#dunestrider boots
#small rooms


#sandstorm sword 17201
execute as @a[scores={fungus=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:17201}}}] run execute at @s run function better_pyramid:sandstorm_sword/main
execute as @e[type=armor_stand, tag=sandMissle] at @s run function better_pyramid:sandstorm_sword/sand_missle
execute as @a[scores={sneaking=1..}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:17201}}}] run execute at @s run scoreboard players set @e[type=armor_stand, tag=sandMissle] sand_agro 1
execute as @a[scores={sneaking=0}, nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick", tag:{CustomModelData:17201}}}] run execute at @s run scoreboard players set @e[type=armor_stand, tag=sandMissle] sand_agro 0

#sandstorm sword in stone
execute as @e[tag=sandstorm_in_stone] at @s run execute as @e[type=minecraft:item, distance=..5, nbt={Item:{id:"minecraft:totem_of_undying", tag:{CustomModelData:17206}}, OnGround:1b}] at @s run function better_pyramid:sandstorm_sword/stone/main
execute as @e[tag=sandstorm_in_stone] at @s if score @s cutscene matches 1.. run function better_pyramid:sandstorm_sword/stone/summon_sword

#vase_1 17202
execute as @e[tag=custom_block, tag=unset] at @s run function better_pyramid:vases/vase_init
execute as @e[tag=custom_block] at @s unless entity @e[type=chicken, distance=..1] run function better_pyramid:vases/vase_remove
execute as @e[tag=custom_block] at @s run kill @e[type=minecraft:item, distance=..1.5, nbt={Item:{id:"minecraft:egg"}}]
#vase_2 17203

#vase_3 17204

#17205 = shard
execute as @e[type=husk] at @s run data merge entity @s {DeathLootTable:"better_pyramid:entities/husk"}

#17206 = ankh
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{CustomModelData:17206}}]}] at @s run effect give @s resistance 1 0
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying", tag:{CustomModelData:17206}}}] run execute at @s run effect give @s regeneration 1 0
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b,tag:{CustomModelData:17206}}]}] at @s run execute at @e[type=armor_stand, tag=sandstorm_in_stone, distance=..5] run particle electric_spark ~ ~.5 ~ .2 .3 .2 1 2 force
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying", tag:{CustomModelData:17206}}}] at @s run execute at @e[type=armor_stand, tag=sandstorm_in_stone, distance=..5] run particle electric_spark ~ ~.5 ~ .2 .3 .2 0 1 force

#dunestrider boots
execute as @a[nbt={Inventory:[{tag:{Tags:[dune_strider]},Slot:100b}]}] at @s if block ~ ~-.5 ~ #better_pyramid:sand_variants run function better_pyramid:dunestrider_boots/boots_effect

#custom potion
execute as @a at @s if score @s potion_effect matches 1 unless block ~ ~-.5 ~ air run function better_pyramid:custom_potion/end_potion
execute as @a at @s if score @s potion_effect matches 1 run function better_pyramid:custom_potion/cancel_potion
execute as @a at @s if score @s potion_effect matches 2.. if score @s sneaking matches 1 run function better_pyramid:custom_potion/cancel_potion
execute as @a at @s if score @s potion_effect matches 2.. run scoreboard players remove @s potion_effect 1 

scoreboard players set @a fungus 0
scoreboard players set @a sneaking 0