execute if score @s cutscene matches 1 run playsound minecraft:ui.stonecutter.take_result master @a ~ ~ ~ 1 0 1
execute if score @s cutscene matches 1..20 run tp ~ ~.05 ~
execute if score @s cutscene matches 10..30 run tp @s ~ ~ ~ ~12 ~
execute if score @s cutscene matches 30..40 run tp @s ~ ~ ~ ~24 ~ 
execute if score @s cutscene matches 1..40 run particle electric_spark ~ ~.5 ~ .2 .3 .2 0 1 force
execute if score @s cutscene matches 40..50 run particle electric_spark ~ ~.5 ~ .2 .3 .2 0 7 force
execute if score @s cutscene matches 40..50 run tp @s ~ ~ ~ ~48 ~ 
execute if score @s cutscene matches 50 run playsound entity.generic.explode block @a ~ ~ ~ 1 0 1
execute if score @s cutscene matches 50 run particle explosion ~ ~ ~ 0 0 0 0 1 force
execute if score @s cutscene matches 50 run summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick", Count:1b, tag:{CustomModelData:17201,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:7,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-123022,6602,21540,-13204]},{AttributeName:"generic.attack_speed",Amount:2,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-123022,6702,21540,-13404]}],display:{Name:'[{"text":"Sandstorm Sword","italic":false,"color":"gold"}]',Lore:['[{"text":"[Right click to activate]","italic":false,"color":"white"}]']}}}}
execute if score @s cutscene matches 50 run kill @s
scoreboard players add @s cutscene 1