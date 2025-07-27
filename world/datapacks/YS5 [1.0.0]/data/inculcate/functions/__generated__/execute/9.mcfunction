#built using mc-build (https://github.com/mc-build/mc-build)

tp @s[tag=aj.inculcate.bone.item] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.left] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigleft] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigrunes] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigleft2] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigrunes3] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.outerleft] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.runes] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.right] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigright] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigrunes2] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigright2] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.bigrunes4] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.outerright] ^0 ^-1.813 ^0
tp @s[tag=aj.inculcate.bone.runes2] ^0 ^-1.813 ^0
execute store result score .calc aj.i run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players add .calc aj.i 2