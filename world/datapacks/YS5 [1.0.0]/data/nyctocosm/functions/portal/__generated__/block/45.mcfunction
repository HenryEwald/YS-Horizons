#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[tag=!z] run function nyctocosm:portal/__generated__/block/46
execute as @s[tag=z] run function nyctocosm:portal/__generated__/block/47
scoreboard players remove @s soundtimer 1
execute as @s unless score @s soundtimer matches 1.. run function nyctocosm:portal/__generated__/block/48
execute if score @s swirltimer matches ..0 run function nyctocosm:portal/__generated__/block/49
scoreboard players remove @s swirltimer 1