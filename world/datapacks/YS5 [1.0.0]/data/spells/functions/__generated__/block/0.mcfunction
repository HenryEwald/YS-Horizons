#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players remove @s s.circle_timer 1
tp @s[tag=!shooter,tag=!Reflector,tag=!Plane,tag=!Resonance] ~ ~ ~ ~0.5 ~
tp @s[tag=Plane] ~ ~ ~ ~-0.5 ~
execute as @s[tag=Plane] run function spells:__generated__/block/1
execute as @s[tag=Reflector] at @s positioned ^ ^1.4 ^-1.3 run function spells:__generated__/block/2
kill @s[tag=!Plane,scores={s.circle_timer=..0}]