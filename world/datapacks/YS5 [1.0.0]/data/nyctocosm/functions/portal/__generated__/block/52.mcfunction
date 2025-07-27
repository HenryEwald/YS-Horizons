#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s[scores={timer=..899}] timer 20
execute if score @s timer matches 900.. run function nyctocosm:portal/__generated__/block/53
execute store result entity @s Rotation[1] float .1 run scoreboard players get @s timer
execute at @s positioned ^ ^ ^7 run tp @e[tag=external_resonance,tag=root,tag=front_small,tag=first] ~ ~ ~
execute at @s positioned ^ ^ ^-7 run tp @e[tag=external_resonance,tag=root,tag=back_small,tag=first] ~ ~ ~
execute at @s positioned ^ ^ ^11 run tp @e[tag=external_resonance,tag=root,tag=front_mid,tag=first] ~ ~ ~
execute at @s positioned ^ ^ ^-11 run tp @e[tag=external_resonance,tag=root,tag=back_mid,tag=first] ~ ~ ~
execute as @e[tag=external_resonance,tag=root,tag=first] run data modify entity @s Pos[1] set from entity @e[tag=external_resonance,tag=first,tag=resonator,limit=1,sort=nearest] Pos[1]