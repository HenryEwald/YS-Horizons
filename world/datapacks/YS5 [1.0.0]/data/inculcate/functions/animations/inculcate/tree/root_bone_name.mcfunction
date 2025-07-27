#built using mc-build (https://github.com/mc-build/mc-build)

execute if entity @s[tag=aj.inculcate.bone.item] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/item_root_0-111
execute if entity @s[tag=aj.inculcate.bone.left] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/left_root_0-111
execute if entity @s[tag=aj.inculcate.bone.right] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/right_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigleft] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigleft_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigright] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigright_root_0-111
execute if entity @s[tag=aj.inculcate.bone.runes] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/runes_root_0-111
execute if entity @s[tag=aj.inculcate.bone.runes2] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/runes2_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigrunes] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigrunes_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigrunes2] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigrunes2_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigleft2] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigleft2_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigrunes3] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigrunes3_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigright2] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigright2_root_0-111
execute if entity @s[tag=aj.inculcate.bone.bigrunes4] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/bigrunes4_root_0-111
execute if entity @s[tag=aj.inculcate.bone.outerleft] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/outerleft_root_0-111
execute if entity @s[tag=aj.inculcate.bone.outerright] run execute if score .this aj.frame matches 0..111 run function inculcate:animations/inculcate/tree/outerright_root_0-111
execute store result entity @s Air short 1 run scoreboard players get .this aj.frame