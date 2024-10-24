# Made by: @rcube.
#
# Called By: rcube:api/load

# Find damage dealt
execute as @a[advancements={rcube:api/damage_dealt/damaged=true}] on target unless entity @s[tag=damage_dealt.entity.no_track] run function rcube:api/damage_dealt/zprivate/damaged
scoreboard players reset @a[advancements={rcube:api/damage_dealt/damaged=false},tag=damage_dealt.player.track] rcubeAPI_damageDealt.damage.track

# Loop
schedule function rcube:api/damage_dealt/zprivate/tick 1t replace
