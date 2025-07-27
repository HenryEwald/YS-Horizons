#built using mc-build (https://github.com/mc-build/mc-build)

execute at @s as @e[type=minecraft:area_effect_cloud,tag=aj.inculcate.bone] if score @s aj.id = .this aj.id run tp @s ~ ~ ~
function inculcate:reset