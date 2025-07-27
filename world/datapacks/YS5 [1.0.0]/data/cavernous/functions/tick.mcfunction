tag @e[type=zombie,predicate=!cavernous:is_zombie_sandstone_caves] add not_sandstone
execute as @e[type=zombie,tag=!not_sandstone] at @e[type=zombie,tag=!not_sandstone,sort=nearest,limit=1] if predicate cavernous:is_zombie_sandstone_caves run function cavernous:husk_replace

tag @e[type=zombie,predicate=!cavernous:is_zombie_desert_caves] add not_desert
execute as @e[type=zombie,tag=!not_desert] at @e[type=zombie,tag=!not_desert,sort=nearest,limit=1] if predicate cavernous:is_zombie_desert_caves run function cavernous:husk_replace

tag @e[type=skeleton,predicate=!cavernous:is_skeleton_icy_caves] add not_icy
execute as @e[type=skeleton,tag=!not_icy] at @e[type=skeleton,tag=!not_icy,sort=nearest,limit=1] if predicate cavernous:is_skeleton_icy_caves run function cavernous:stray_replace

#Geyser---

#Can Erupt

#Tests if it can erupt:
#execute as @e[tag=geyser,type=armor_stand] at @s if block ~ ~2 ~ air if entity @a[distance=..30] run say hello

#Place
execute as @e[type=armor_stand,tag=geyser,tag=!placed] run function cavernous:geyser/place_check

execute as @e[type=armor_stand,tag=geyser,tag=!placed,tag=generated] run function cavernous:geyser/place_geyser

#Break
execute as @e[tag=geyser,type=armor_stand,tag=placed] at @s unless block ~ ~1 ~ basalt run tag @s add broken
execute at @e[tag=geyser,type=armor_stand,tag=placed] unless block ~ ~1 ~ basalt run function cavernous:geyser/break_geyser

#Generate
execute at @a[predicate=cavernous:in_volcanic] if score .global geyser_toggle matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 minecraft:repeating_command_block[conditional=false,facing=west]{Command:"function cavernous:geyser/spawn_geyser",CustomName:'{"text":"@"}',LastExecution:68318L,LastOutput:'{"extra":[{"color":"red","extra":[{"translate":"arguments.function.unknown","with":["cavernous:geyser/spawn_geyser"]}],"text":""}],"text":"[21:39:41] "}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b} replace barrier
execute at @a[predicate=cavernous:in_inactive] if score .global geyser_toggle matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 minecraft:repeating_command_block[conditional=false,facing=west]{Command:"function cavernous:geyser/spawn_geyser",CustomName:'{"text":"@"}',LastExecution:68318L,LastOutput:'{"extra":[{"color":"red","extra":[{"translate":"arguments.function.unknown","with":["cavernous:geyser/spawn_geyser"]}],"text":""}],"text":"[21:39:41] "}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b} replace barrier

execute at @a[predicate=cavernous:in_volcanic] if score .global geyser_toggle matches 0 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 basalt replace barrier
execute at @a[predicate=cavernous:in_inactive] if score .global geyser_toggle matches 0 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 basalt replace barrier

#Events


    #Touch

    execute as @e[tag=geyser,type=armor_stand] at @s positioned ~ ~2 ~ unless entity @e[tag=!geyser,distance=...65,type=!item,predicate=cavernous:not_sneaking,type=!bat] run scoreboard players set @s time_stood_on 0

    execute as @e[tag=geyser,type=armor_stand] at @s unless block ~ ~ ~ #cavernous:ice if block ~ ~2 ~ #cavernous:geyser_open if entity @a[distance=..35] positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,type=!item,predicate=cavernous:not_sneaking,type=!bat] run scoreboard players add @s time_stood_on 1

    execute as @e[tag=geyser,type=armor_stand] at @s unless block ~ ~ ~ #cavernous:ice if block ~ ~2 ~ #cavernous:geyser_open if entity @a[distance=..35] positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,scores={is_flying=1..},type=player] run scoreboard players set @s time_stood_on 20
    scoreboard players set @a is_flying 0

    execute as @e[tag=geyser,type=armor_stand,scores={time_stood_on=1..}] at @s if predicate cavernous:geyser/50 run playsound minecraft:entity.magma_cube.jump block @a ~ ~2 ~ 0.5 1
    execute as @e[tag=geyser,type=armor_stand,scores={time_stood_on=1..}] at @s run particle minecraft:cloud ~ ~2.2 ~ 0.2 0 0.2 0.03 1 force @a

    execute as @e[tag=geyser,type=armor_stand,scores={time_stood_on=20..}] at @s run function cavernous:geyser/events/burst_extra

    #Redstone

    execute as @e[tag=geyser,type=armor_stand] at @s if score @s powered matches 1 if score @s bursted matches 0 run function cavernous:geyser/events/burst
    execute as @e[tag=geyser,type=armor_stand] at @s if score @s powered matches 1 if score @s bursted matches 0 run scoreboard players set @s bursted 1

    execute as @e[tag=geyser,type=armor_stand] at @s if score @s powered matches 0 run scoreboard players set @s bursted 0

    execute as @e[tag=geyser,type=armor_stand] at @s positioned ~ ~1 ~ run function cavernous:geyser/power

    #Repeat

    schedule function cavernous:tick 1t
