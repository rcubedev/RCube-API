# Made by: @rcube.
# [Desc.]
#
# Called By: rcube:api/damage_dealt/check_damaged

# Set tag
tag @s add damage_dealt.entity.damaged.temp
tag @s add damage_dealt.api.entity.damaged
tag @s add damage_dealt.api.entity.damaged.canClear

# scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.dmgTaken = @s rcube_api.damage_dealt-entity.track.health
scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.dmgTaken = @s rcube_api.damage_dealt-entity.track.health.pre

# FIXED
# scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.dmgTaken -= @s rcube_api.damage_dealt-entity.track.health.pre
scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.dmgTaken -= @s rcube_api.damage_dealt-entity.track.health

scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.lost += @s rcube_api.damage_dealt-entity.track.health.dmgTaken
execute on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.damage = @e[tag=damage_dealt.entity.damaged.temp,limit=1] rcube_api.damage_dealt-entity.track.health.dmgTaken
execute on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.damage.total += @s rcube_api.damage_dealt-entity.damage

# Set health
scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.pre = @s rcube_api.damage_dealt-entity.track.health

# Remove temp tag
tag @s remove damage_dealt.entity.damaged.temp