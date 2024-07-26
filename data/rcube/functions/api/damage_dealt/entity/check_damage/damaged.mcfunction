# Made by: @rcube.
# Calculate damage dealt, contribute to player
#
# Called By: rcube:api/damage_dealt/check_damaged

# Set tag
tag @s add damage_dealt.entity.damaged.temp
tag @s add damage_dealt.api.entity.damaged
tag @s add damage_dealt.api.entity.damaged.canClear

# Store UUID
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker store result score @s rcube_api.damage_dealt-entity.UUID0 run data get entity @e[tag=damage_dealt.entity.damaged.temp,limit=1] UUID[0]
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker store result score @s rcube_api.damage_dealt-entity.UUID1 run data get entity @e[tag=damage_dealt.entity.damaged.temp,limit=1] UUID[1]
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker store result score @s rcube_api.damage_dealt-entity.UUID2 run data get entity @e[tag=damage_dealt.entity.damaged.temp,limit=1] UUID[2]
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker store result score @s rcube_api.damage_dealt-entity.UUID3 run data get entity @e[tag=damage_dealt.entity.damaged.temp,limit=1] UUID[3]

# Track damage taken & health lost
scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.dmgTaken = @s rcube_api.damage_dealt-entity.track.health.pre
scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.dmgTaken -= @s rcube_api.damage_dealt-entity.track.health
execute if entity @s[tag=damage_dealt.input.health.total.lost] run scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.lost += @s rcube_api.damage_dealt-entity.track.health.dmgTaken

# Contribute damage done to player
execute on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.damage = @e[tag=damage_dealt.entity.damaged.temp,limit=1] rcube_api.damage_dealt-entity.track.health.dmgTaken
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.damage.total += @s rcube_api.damage_dealt-entity.damage

# Clear total damage if player attacked a different boss
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker unless score @s rcube_api.damage_dealt-entity.UUID0 = @s rcube_api.damage_dealt-entity.UUID0.pre unless score @s rcube_api.damage_dealt-entity.UUID1 = @s rcube_api.damage_dealt-entity.UUID1.pre unless score @s rcube_api.damage_dealt-entity.UUID2 = @s rcube_api.damage_dealt-entity.UUID2.pre unless score @s rcube_api.damage_dealt-entity.UUID3 = @s rcube_api.damage_dealt-entity.UUID3.pre run tag @s add damage_dealt.player.attackedOther.temp
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker if entity @s[tag=damage_dealt.player.attackedOther.temp] run scoreboard players reset @s rcube_api.damage_dealt-entity.damage.total
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker if entity @s[tag=damage_dealt.player.attackedOther.temp] run tag @s remove damage_dealt.player.attackedOther.temp

# Set health
scoreboard players operation @s rcube_api.damage_dealt-entity.track.health.pre = @s rcube_api.damage_dealt-entity.track.health

# Set UUID
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.UUID0.pre = @s rcube_api.damage_dealt-entity.UUID0
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.UUID1.pre = @s rcube_api.damage_dealt-entity.UUID1
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.UUID2.pre = @s rcube_api.damage_dealt-entity.UUID2
execute if entity @s[tag=damage_dealt.input.damage.total] on attacker run scoreboard players operation @s rcube_api.damage_dealt-entity.UUID3.pre = @s rcube_api.damage_dealt-entity.UUID3

# Remove temp tag
tag @s remove damage_dealt.entity.damaged.temp