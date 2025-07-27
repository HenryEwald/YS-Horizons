#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set # aj.i 1
execute at @s as @e[type=#inculcate:bone_entities,tag=aj.inculcate.bone] if score @s aj.id = .this aj.id run function inculcate:__generated__/execute/14