#built using mc-build (https://github.com/mc-build/mc-build)

execute if score .this aj.frame matches 0 run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score .this aj.frame matches 8..15 run function inculcate:animations/inculcate/tree/bigright_display_8-15
execute if score .this aj.frame matches 16..23 run function inculcate:animations/inculcate/tree/bigright_display_16-23
execute if score .this aj.frame matches 24..31 run function inculcate:animations/inculcate/tree/bigright_display_24-31
execute if score .this aj.frame matches 32..39 run function inculcate:animations/inculcate/tree/bigright_display_32-39
execute if score .this aj.frame matches 40..47 run function inculcate:animations/inculcate/tree/bigright_display_40-47
execute if score .this aj.frame matches 48..55 run function inculcate:animations/inculcate/tree/bigright_display_48-55
execute if score .this aj.frame matches 56..63 run function inculcate:animations/inculcate/tree/bigright_display_56-63