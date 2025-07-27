#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add aj.inculcate.anim.inculcate
execute if score .aj.anim_loop aj.inculcate.animating matches 0 run function inculcate:animation_loop
scoreboard players set #execute LANG_MC_INTERNAL 1