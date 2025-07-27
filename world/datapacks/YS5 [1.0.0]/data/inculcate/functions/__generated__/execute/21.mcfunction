#built using mc-build (https://github.com/mc-build/mc-build)

execute if entity @s[tag=aj.inculcate.anim.inculcate] at @s run function inculcate:animations/inculcate/next_frame
scoreboard players operation @s aj.inculcate.animating = .aj.animation aj.inculcate.animating