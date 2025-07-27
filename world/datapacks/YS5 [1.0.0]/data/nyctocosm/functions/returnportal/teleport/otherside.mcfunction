function nyctocosm:returnportal/teleport/set_pos
effect give @s slow_falling 2 1 true
scoreboard players set @s sculk.corruption.cooldown 120
execute at @s in nyctocosm:nyctocosm run function nyctocosm:returnportal/teleport/load/otherside