#built using mc-build (https://github.com/mc-build/mc-build)

schedule function inculcate:animation_loop 1t
scoreboard players set .aj.anim_loop aj.inculcate.animating 1
scoreboard players set .aj.animation aj.inculcate.animating 0
execute as @e[type=minecraft:marker,tag=aj.inculcate.root] run function inculcate:__generated__/execute/21
execute if score .aj.animation aj.inculcate.animating matches 0 run function inculcate:__generated__/execute/23