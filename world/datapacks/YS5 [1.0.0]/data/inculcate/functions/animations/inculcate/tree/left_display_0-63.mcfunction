#built using mc-build (https://github.com/mc-build/mc-build)

execute if score .this aj.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score .this aj.frame matches 8..15 run function inculcate:animations/inculcate/tree/left_display_8-15