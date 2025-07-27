#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s resonancerange 1
particle sonic_boom ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if score @s resonancerange matches 70.. run tag @s add endraycast
execute as @e[type=#nyctocosm:livingthings,distance=..2] run function spells:resonance/__generated__/block/200
execute at @e[type=#nyctocosm:livingthings,distance=..2] run function ncdamage:playermarkerdamage
function nyctocosm:portal/light
execute at @s if entity @e[tag=spell,tag=reflector,tag=!matchedid,distance=..3] run function spells:resonance/__generated__/block/201
execute as @s[tag=!endraycast] unless entity @e[tag=reflector,tag=spell,distance=..3] positioned ^ ^ ^1 run function spells:resonance/raycast
execute as @s[tag=!endraycast] rotated as @e[tag=reflector,tag=spell,tag=!matchedid,distance=..3,limit=1,sort=nearest] positioned ^ ^ ^1 run function spells:resonance/raycast
execute as @s[tag=endraycast] run function spells:resonance/__generated__/block/204