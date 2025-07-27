playsound block.glass.break block @a ~ ~ ~ 1 1
particle poof ~ ~.5 ~ .1 .1 .1 0 5

scoreboard players set C_100 RNG_Constant 100
scoreboard players set C_314159 RNG_Constant 314159
scoreboard players set C_2718281 RNG_Constant 2718281

scoreboard players set RNGseed RNG_Variable 0

scoreboard players add RNGseed RNG_Variable 1
execute store result score RNG RNG_Variable run time query gametime
scoreboard players operation RNG RNG_Variable *= RNGseed RNG_Variable
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant
scoreboard players operation RNG RNG_Variable *= RNG RNG_Variable
scoreboard players operation RNG RNG_Variable /= C_100 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_314159 RNG_Constant
scoreboard players operation RNG RNG_Variable *= C_2718281 RNG_Constant

scoreboard players operation RNG RNG_Variable %= C_100 RNG_Constant

execute if score RNG RNG_Variable matches 0 run summon area_effect_cloud ~ ~ ~ {WaitTime:0,Duration:100,Radius:3,Potion:"minecraft:poison"}

kill @s