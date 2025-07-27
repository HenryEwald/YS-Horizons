#built using mc-build (https://github.com/mc-build/mc-build)

summon minecraft:marker ~ ~ ~ {Tags:['dais','justsummoned','new','aj.inculcate','aj.inculcate.root']}
execute as @e[type=minecraft:marker,tag=aj.inculcate.root,tag=new,distance=..1,limit=1] rotated ~ 0 run function inculcate:summon/__generated__/execute/5
function inculcate:assert_animation_flags