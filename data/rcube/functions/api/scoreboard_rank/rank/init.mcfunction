# Made by: @rcube.
# Initialise rankings
#
# Called By: rcube:api/scoreboard_rank/init, THIS

# Determine highest score holder
scoreboard players set #highest rcube_api.scoreboard_rank.temp 0
scoreboard players operation #highest rcube_api.scoreboard_rank.temp > @e[scores={rcube_api.scoreboard_rank.temp=-2147483648..2147483647}] rcube_api.scoreboard_rank.temp

# Assign rank; prevent sharing same ranks
scoreboard players set #ranked rcube_api.scoreboard_rank.temp 0
execute as @e[scores={rcube_api.scoreboard_rank.temp=-2147483648..2147483647}] if score @s rcube_api.scoreboard_rank.temp = #highest rcube_api.scoreboard_rank.temp run function rcube:api/scoreboard_rank/rank/assign

# If entities on the temporary scoreboard, loop
execute if entity @e[scores={rcube_api.scoreboard_rank.temp=-2147483648..2147483647}] run function rcube:api/scoreboard_rank/rank/init

# If no entities on scoreboard, set ready
execute unless entity @e[scores={rcube_api.scoreboard_rank.temp=-2147483648..2147483647}] run data modify storage rcube:api/scoreboard_rank output.done set value true