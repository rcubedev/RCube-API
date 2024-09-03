# Made by: @rcube.
# Calculate damage dealt, contribute to player
#
# Called By: rcube:api/damage_dealt/check_damaged

# Set tags
tag @s add damage_dealt.private.damaged.temp
tag @s add damage_dealt.out.damaged

# Store UUID of entity attacked and set to attacker
execute if entity @s[tag=damage_dealt.damage.total] on attacker store result score @s rcubeAPI_damageDealt.UUID0 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[0]
execute if entity @s[tag=damage_dealt.damage.total] on attacker store result score @s rcubeAPI_damageDealt.UUID1 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[1]
execute if entity @s[tag=damage_dealt.damage.total] on attacker store result score @s rcubeAPI_damageDealt.UUID2 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[2]
execute if entity @s[tag=damage_dealt.damage.total] on attacker store result score @s rcubeAPI_damageDealt.UUID3 run data get entity @e[tag=damage_dealt.private.damaged.temp,limit=1] UUID[3]

# Track damage taken & health lost
scoreboard players operation @s rcubeAPI_damageDealt.track.health.dmgTaken = @s rcubeAPI_damageDealt.track.health.pre
scoreboard players operation @s rcubeAPI_damageDealt.track.health.dmgTaken -= @s rcubeAPI_damageDealt.track.health
execute if entity @s[tag=damage_dealt.health.total.lost] run scoreboard players operation @s rcubeAPI_damageDealt.track.health.lost += @s rcubeAPI_damageDealt.track.health.dmgTaken

# Reset total damage if player attacked other entity
execute if entity @s[tag=damage_dealt.damage.total] on attacker unless score @s rcubeAPI_damageDealt.UUID0 = @s rcubeAPI_damageDealt.UUID0.pre unless score @s rcubeAPI_damageDealt.UUID1 = @s rcubeAPI_damageDealt.UUID1.pre unless score @s rcubeAPI_damageDealt.UUID2 = @s rcubeAPI_damageDealt.UUID2.pre unless score @s rcubeAPI_damageDealt.UUID3 = @s rcubeAPI_damageDealt.UUID3.pre run tag @s add damage_dealt.private.player.attacked_other.temp
execute if entity @s[tag=damage_dealt.damage.total] on attacker if entity @s[tag=damage_dealt.private.player.attacked_other.temp] run scoreboard players reset @s rcubeAPI_damageDealt.damage.total
execute if entity @s[tag=damage_dealt.damage.total] on attacker if entity @s[tag=damage_dealt.private.player.attacked_other.temp] run tag @s remove damage_dealt.private.player.attacked_other.temp

# Contribute damage done to player
execute on attacker run scoreboard players operation @s rcubeAPI_damageDealt.damage = @e[tag=damage_dealt.private.damaged.temp,limit=1] rcubeAPI_damageDealt.track.health.dmgTaken
execute if entity @s[tag=damage_dealt.damage.total] on attacker run scoreboard players operation @s rcubeAPI_damageDealt.damage.total += @s rcubeAPI_damageDealt.damage

# Set health
scoreboard players operation @s rcubeAPI_damageDealt.track.health.pre = @s rcubeAPI_damageDealt.track.health

# Set UUID
execute if entity @s[tag=damage_dealt.damage.total] on attacker run scoreboard players operation @s rcubeAPI_damageDealt.UUID0.pre = @s rcubeAPI_damageDealt.UUID0
execute if entity @s[tag=damage_dealt.damage.total] on attacker run scoreboard players operation @s rcubeAPI_damageDealt.UUID1.pre = @s rcubeAPI_damageDealt.UUID1
execute if entity @s[tag=damage_dealt.damage.total] on attacker run scoreboard players operation @s rcubeAPI_damageDealt.UUID2.pre = @s rcubeAPI_damageDealt.UUID2
execute if entity @s[tag=damage_dealt.damage.total] on attacker run scoreboard players operation @s rcubeAPI_damageDealt.UUID3.pre = @s rcubeAPI_damageDealt.UUID3

# Remove stale tag
tag @s remove damage_dealt.private.damaged.temp