#built using mc-build (https://github.com/mc-build/mc-build)

tp @s ~ ~ ~ ~ ~
data modify entity @s data.UUID set from entity @e[tag=spell,tag=reflector,distance=..3,limit=1,sort=nearest] data.UUID