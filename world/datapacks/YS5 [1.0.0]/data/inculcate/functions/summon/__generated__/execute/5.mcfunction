#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ~ ~ ~ ~ ~
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.i 1
execute at @s run function inculcate:summon/__generated__/execute/7
tag @s remove new
scoreboard players set @s aj.inculcate.inculcate.loopMode 1
scoreboard players set @s aj.frame 0
scoreboard players set @s aj.inculcate.animating 0