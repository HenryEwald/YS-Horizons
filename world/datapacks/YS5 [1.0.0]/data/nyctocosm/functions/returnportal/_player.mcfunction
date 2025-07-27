execute at @s as @e[type=marker,tag=sculk.portal,distance=..64] at @s run function nyctocosm:portal/lock

execute unless score @s sculk.portal.cooldown matches -1.. run scoreboard players set @s sculk.portal.cooldown 0

execute as @s[predicate=nyctocosm:in_nyctocosm] at @s if block ~ ~ ~ end_gateway run function nyctocosm:returnportal/teleport/overworld