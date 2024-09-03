# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Inititalise module
function rcube:api/scoreboard_rank/installed

# Data
scoreboard objectives add rcubeAPI_scoreboardRank.in dummy "[rcube:api/scoreboard_rank] Input Scores"
scoreboard objectives add rcubeAPI_scoreboardRank.out dummy "[rcube:api/scoreboard_rank] Ranked Scores"
scoreboard objectives add rcubeAPI_scoreboardRank.temp dummy "[rcube:api/scoreboard_rank] Temp Scores (do rank)"

# Load message
execute unless data storage rcube:api/scoreboard_rank private.load_message run data modify storage rcube:api/scoreboard_rank private.load_message set value true
execute if data storage rcube:api/scoreboard_rank {private:{load_message:true},installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "scoreboard_rank", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]
execute if data storage rcube:api/scoreboard_rank {private:{load_message:true}} unless data storage rcube:api/scoreboard_rank {installed:true} run tellraw @a ["",{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "red"},{"text": "scoreboard_rank", "color":"red"},{"text": "' ","color": "red"},{"text": "failed to load.","color": "gray"}]
