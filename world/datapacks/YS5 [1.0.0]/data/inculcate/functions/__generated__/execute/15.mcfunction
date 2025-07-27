#built using mc-build (https://github.com/mc-build/mc-build)

function inculcate:animations/inculcate/tree/root_bone_name
execute store result score .calc aj.i run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2