# Made by: @rcube.
# Register all dependencies for this module
#
# Called By: rcube:api/load

# Data
scoreboard objectives add rcubeAPI_scoreboard_rank.in dummy "[rcube:api/scoreboard_rank] Input Scores"
scoreboard objectives add rcubeAPI_scoreboard_rank.out dummy "[rcube:api/scoreboard_rank] Ranked Scores"
scoreboard objectives add rcubeAPI_scoreboard_rank.temp dummy "[rcube:api/scoreboard_rank] Temp Scores (do rank)"

# Load message
execute unless data storage rcube:api/scoreboard_rank private.load_message run data modify storage rcube:api/scoreboard_rank private.load_message set value true
execute unless data storage rcube:api/scoreboard_rank {installed:true} run data modify storage rcube:api/scoreboard_rank installed set value true
execute if data storage rcube:api/scoreboard_rank {private:{load_message:true}} run tellraw @a [{"text": "[","color": "dark_gray"},{"text": "RCube API","color": "gray"},{"text": "] ","color": "dark_gray"},{"text": "Module ","color" :"gray"},{"text": "'","color": "green"},{"text": "scoreboard_rank", "color":"green"},{"text": "' ","color": "green"},{"text": "reloaded.","color": "gray"}]