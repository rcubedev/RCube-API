# Made by: @rcube.
# Assign players rank
#
# Called By: rcube:api/scoreboard_rank/rank/init

# Protects multiple people getting the same rank
execute if score #ranked rcube_api.scoreboard_rank.temp matches 1 run return 0

# Grab available rank
scoreboard players operation @s rcube_api.scoreboard_rank.output = #rank rcube_api.scoreboard_rank.output

# Advance available rank
scoreboard players add #rank rcube_api.scoreboard_rank.output 1

# Reset score on temporary scoreboard
scoreboard players reset @s rcube_api.scoreboard_rank.temp

# Protection from multiple people getting the same rank
scoreboard players set #ranked rcube_api.scoreboard_rank.temp 1