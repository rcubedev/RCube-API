# Made by: @rcube.
# Initialise module
#
# Called By: rcube:api/load

# Clear stale data
data modify storage rcube:api/scoreboard_rank output.done set value false
scoreboard players reset * rcubeAPI_scoreboard_rank.out
scoreboard players reset * rcubeAPI_scoreboard_rank.temp

# Move raw score to a temporary scoreboard
execute as @e[scores={rcubeAPI_scoreboard_rank.in=-2147483648..2147483647}] run scoreboard players operation @s rcubeAPI_scoreboard_rank.temp = @s rcubeAPI_scoreboard_rank.in
scoreboard players reset * rcubeAPI_scoreboard_rank.in

# Available rank holder
scoreboard players set $rank rcubeAPI_scoreboard_rank.out 1

# Initialise rank; looping
function rcube:api/scoreboard_rank/zprivate/rank/init