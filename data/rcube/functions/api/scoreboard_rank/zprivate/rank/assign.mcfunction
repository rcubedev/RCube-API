# Made by: @rcube.
# Assign players rank
#
# Called By: rcube:api/scoreboard_rank/rank/init

# Protects multiple people getting the same rank
execute if score $ranked rcubeAPI_scoreboard_rank.temp matches 1 run return 0

# Grab available rank
scoreboard players operation @s rcubeAPI_scoreboard_rank.out = $rank rcubeAPI_scoreboard_rank.out

# Advance available rank
scoreboard players add $rank rcubeAPI_scoreboard_rank.out 1

# Reset score on temporary scoreboard
scoreboard players reset @s rcubeAPI_scoreboard_rank.temp

# Protection from multiple people getting the same rank
scoreboard players set $ranked rcubeAPI_scoreboard_rank.temp 1