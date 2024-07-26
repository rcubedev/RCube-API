# Made by: @rcube.
# Register all dependencies for this datapack
#
# Called By: rcube:api/load

execute in the_end unless block 29999999 -64 29999999 oak_sign run setblock 29999999 -64 29999999 oak_sign
tag @s add rcube.api.damage_indicator.entity.takenDamage
summon armor_stand ~ ~0.5 ~ {Tags:["rcube.api.damage_indicator.marker"],CustomNameVisible:1b,CustomName:'{"text":""}',Motion:[0.1,0.1,0.05],Invisible:true,Invulnerable:true}
# data merge block 0 100 0 {front_text:{messages:['[{"text":"-","color":"red"},{"score":{"name":"@p[tag=rcube.api.damage_indicator.entity.takenDamage]","objective":"test","color":"red"}]','[""]','[""]','[""]']},is_waxed:true}
data merge block 29999999 -64 29999999 {front_text:{messages:['[{"text":"-10","color":"red"}]','[""]','[""]','[""]']},is_waxed:true}
data modify entity @e[type=armor_stand,tag=rcube.api.damage_indicator.marker,limit=1] CustomName set from block 29999999 -64 29999999 front_text.messages[0]
tag @e[type=armor_stand,tag=rcube.api.damage_indicator.entity] remove rcube.api.damage_indicator.marker
tag @s remove rcube.api.damage_indicator.entity.takenDamage

summon armor_stand ~ ~0.5 ~ {Tags:["rcube.api.damage_indicator.marker"],CustomNameVisible:1b,CustomName:'[{"text":"-","color":"red"},{"score":{"name":"RCube_","objective":"rcube_deathCount","color":"red"}]',Motion:[0.1,0.1,0.05],Invisible:true,Invulnerable:true}