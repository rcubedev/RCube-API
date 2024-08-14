# Made by: @rcube.
# Initialise module
#
# Called By: rcube:api/load

# Clear stale data
data modify storage rcube:api/scoreboard_rank output.done set value false
scoreboard players reset * rcube_api.scoreboard_rank.output

# Move raw score to a temporary scoreboard
execute as @e[scores={rcube_api.scoreboard_rank.input=-2147483648..2147483647}] run scoreboard players operation @s rcube_api.scoreboard_rank.temp = @s rcube_api.scoreboard_rank.input
scoreboard players reset * rcube_api.scoreboard_rank.input

# Available rank holder
scoreboard players set #rank rcube_api.scoreboard_rank.output 1

# Initialise rank; looping
function rcube:api/scoreboard_rank/zprivate/rank/init