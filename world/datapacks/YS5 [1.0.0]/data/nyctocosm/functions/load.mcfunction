#built using mc-build (https://github.com/mc-build/mc-build)
# Misc
scoreboard objectives add sculk.config dummy
scoreboard objectives add sculk.debug dummy
scoreboard objectives add sculk.math dummy
scoreboard objectives add sculk.constants dummy
scoreboard objectives add sculk.xp dummy

# Corruption
scoreboard objectives add sculk.corruption dummy
scoreboard objectives add sculk.corruption.cooldown dummy

# Player
scoreboard objectives add sculk.player.slot dummy
scoreboard objectives add sculk.player.sneak minecraft.custom:sneak_time
scoreboard objectives add sculk.player.death deathCount
scoreboard objectives add sculk.player.xp xp

# Portal
scoreboard objectives add sculk.portal.x dummy
scoreboard objectives add sculk.portal.y dummy
scoreboard objectives add sculk.portal.z dummy
scoreboard objectives add sculk.portal.cooldown dummy

# Bundle
scoreboard objectives add sculk.items.bundle dummy
scoreboard objectives add sculk.items.bundle.used minecraft.used:minecraft.bundle
scoreboard objectives add sculk.items.bundle.slot dummy

# Roller
scoreboard objectives add sculk.items.roller dummy
scoreboard objectives add sculk.items.roller.slot dummy

# Magnet
scoreboard objectives add sculk.items.magnet dummy
scoreboard objectives add sculk.items.magnet.cooldown dummy
scoreboard objectives add LANG_MC_INTERNAL dummy
scoreboard objectives add id dummy
scoreboard objectives add Count dummy
scoreboard objectives add value dummy
scoreboard objectives add timer dummy
scoreboard objectives add floattimer dummy
scoreboard objectives add floatmax dummy
scoreboard objectives add soundtimer dummy
scoreboard objectives add calmness dummy
scoreboard objectives add heartbeattimer dummy
scoreboard objectives add feartimer dummy
scoreboard objectives add darknessmeter dummy
scoreboard objectives add despawntimer dummy
scoreboard objectives add swirltimer dummy
scoreboard objectives add humtimer dummy
scoreboard objectives add portaltimer dummy
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add PUUID0 dummy
scoreboard objectives add PUUID1 dummy
scoreboard objectives add PUUID2 dummy
scoreboard objectives add PUUID3 dummy
scoreboard objectives add installAJ dummy
execute unless score DeathWalker installAJ matches 1.. run function death_walker:install
scoreboard players set DeathWalker installAJ 1
execute unless score CastSpell installAJ matches 1.. run function aj_cast_spell:install
scoreboard players set CastSpell installAJ 1
execute unless score Inculcate installAJ matches 1.. run function inculcate:install
scoreboard players set Inculcate installAJ 1
kill @e[tag=SPAWNMARKER]
summon marker ~ ~ ~ {Tags:["SPAWNMARKER"]}
tellraw @a ["",{"text":"[","color":"dark_green"},{"text":"\u2714","color":"green"},{"text":"]","color":"dark_green"},{"text":" \u21e8","color":"dark_gray"},{"text":" ||","obfuscated":true,"color":"gold"},{"text":" The ","color":"dark_gray"},{"text":"Nyctocosm ","color":"dark_purple"},{"text":"by ","color":"dark_gray"},{"text":"F","color":"dark_aqua"},{"text":"lubberschnub ","color":"dark_gray"},{"text":"||","obfuscated":true,"color":"gold"}]