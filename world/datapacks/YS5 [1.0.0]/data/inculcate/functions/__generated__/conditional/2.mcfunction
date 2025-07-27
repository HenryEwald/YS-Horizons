#built using mc-build (https://github.com/mc-build/mc-build)

tag @s remove aj.inculcate.anim.inculcate
scoreboard players set @s aj.frame 0
scoreboard players operation .this aj.id = @s aj.id
execute as @e[type=minecraft:area_effect_cloud,tag=aj.inculcate.bone,distance=..5] if score @s aj.id = .this aj.id run function inculcate:__generated__/execute/9
execute as @e[type=minecraft:armor_stand,tag=aj.inculcate.bone,distance=..5] if score @s aj.id = .this aj.id run function inculcate:__generated__/execute/12
scoreboard players set #execute LANG_MC_INTERNAL 1