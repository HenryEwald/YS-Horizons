#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set #execute LANG_MC_INTERNAL 0
execute if entity @s[tag=aj.inculcate.root] rotated ~ 0 run function inculcate:__generated__/conditional/4
execute if score #execute LANG_MC_INTERNAL matches 0 run function inculcate:__generated__/conditional/5