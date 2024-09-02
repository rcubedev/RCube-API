# Made by: @rcube.
# Assign players rank
#
# Called By: rcube:api/scoreboard_rank/rank/init

# Protects multiple people getting the same rank
execute if score $ranked rcubeAPI_scoreboardRank.temp matches 1 run return 0

# Grab available rank
scoreboard players operation @s rcubeAPI_scoreboardRank.out = $rank rcubeAPI_scoreboardRank.out

# Advance available rank
scoreboard players add $rank rcubeAPI_scoreboardRank.out 1

# Reset score on temporary scoreboard
scoreboard players reset @s rcubeAPI_scoreboardRank.temp

# Protection from multiple people getting the same rank
scoreboard players set $ranked rcubeAPI_scoreboardRank.temp 1