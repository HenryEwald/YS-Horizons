#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add aj.inculcate.anim.inculcate
execute if score .aj.inculcate.framerate aj.i matches ..-1 run scoreboard players set @s aj.frame 112
execute if score .aj.inculcate.framerate aj.i matches 1.. run scoreboard players set @s aj.frame 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.inculcate.animating matches 0 run function inculcate:animation_loop
scoreboard players set #execute LANG_MC_INTERNAL 1