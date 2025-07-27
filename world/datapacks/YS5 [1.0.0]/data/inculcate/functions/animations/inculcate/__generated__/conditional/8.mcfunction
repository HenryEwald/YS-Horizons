#built using mc-build (https://github.com/mc-build/mc-build)

tag @s remove aj.inculcate.anim.inculcate
scoreboard players set @s aj.frame 0
scoreboard players operation .oldValue aj.i = .noScripts aj.i
scoreboard players set .noScripts aj.i 1
function inculcate:animations/inculcate/next_frame
scoreboard players operation .noScripts aj.i = .oldValue aj.i
scoreboard players set @s aj.frame 0
scoreboard players set #execute LANG_MC_INTERNAL 1