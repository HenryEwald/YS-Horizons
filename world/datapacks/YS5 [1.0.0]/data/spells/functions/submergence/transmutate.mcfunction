#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players operation 0 temp = @s m.spell.power
scoreboard players operation 0 temp *= #4 const
scoreboard players operation 0 temp += Submergence s.damage
scoreboard players operation TEMP s.damage = 0 temp
scoreboard players operation 0 temp = TEMP s.damage
scoreboard players operation 0 temp *= #1000 const
scoreboard players operation TEMP s.damage = 0 temp
execute as @e[type=#nyctocosm:livingthings,nbt={OnGround:1b},distance=3..30] at @s run function spells:submergence/__generated__/block/345
scoreboard players reset TEMP s.damage
playsound nyctocosm:spells.transmutate.submergence master @a[distance=..50] ~ ~ ~ 10