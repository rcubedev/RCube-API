# Made by: @rcube.
# Initialise module
#
# Called By: rcube:api/load

# Clear stale data
data modify storage rcube:api/scoreboard_rank out.done set value false
scoreboard players reset * rcubeAPI_scoreboardRank.out
scoreboard players reset * rcubeAPI_scoreboardRank.temp

# Move raw score to a temporary scoreboard
execute as @e[scores={rcubeAPI_scoreboardRank.in=-2147483648..2147483647}] run scoreboard players operation @s rcubeAPI_scoreboardRank.temp = @s rcubeAPI_scoreboardRank.in
scoreboard players reset * rcubeAPI_scoreboardRank.in

# Available rank holder
scoreboard players set $rank rcubeAPI_scoreboardRank.out 1

# Initialise rank; looping
function rcube:api/scoreboard_rank/zprivate/rank/init