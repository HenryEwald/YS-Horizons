#built using mc-build (https://github.com/mc-build/mc-build)

execute if predicate effects:screen_shake/shake_right run function effects:screen_shake/__generated__/block/54
execute unless predicate effects:screen_shake/shake_right as @s[tag=!shookhoriz] run function effects:screen_shake/__generated__/block/55
execute if predicate effects:screen_shake/shake_up run function effects:screen_shake/__generated__/block/56
execute unless predicate effects:screen_shake/shake_up as @s[tag=!shookhoriz] run function effects:screen_shake/__generated__/block/57
tag @s remove shookhoriz
tag @s remove shookverti