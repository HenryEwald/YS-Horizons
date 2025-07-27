#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
execute rotated ~ 0 as @e[type=#inculcate:bone_entities,tag=aj.inculcate.bone,distance=..5.1] if score @s aj.id = .this aj.id run function inculcate:animations/inculcate/tree/trunk
execute if score .noScripts aj.i matches 0 run function inculcate:animations/inculcate/__generated__/execute/1603
scoreboard players operation @s aj.frame += .aj.inculcate.framerate aj.i
scoreboard players set .aj.animation aj.inculcate.animating 1
execute unless score @s aj.frame matches 0..112 run function inculcate:animations/inculcate/edge