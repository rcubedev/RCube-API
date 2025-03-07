# Made by: @rcube.
# Register all modules and their dependencies
#
# Called By: #minecraft:load

# Load modules
function rcube:api/_core/zprivate/load
function rcube:api/centre_string/zprivate/load
function rcube:api/damage_dealt/zprivate/load
function rcube:api/damage_taken/zprivate/load
function rcube:api/death_location/zprivate/load
function rcube:api/item/zprivate/load
function rcube:api/get_uuid/zprivate/load
function rcube:api/player_name/zprivate/load
function rcube:api/px_calc/zprivate/load
function rcube:api/scoreboard_rank/zprivate/load

# Run tick
schedule clear rcube:api/tick
schedule function rcube:api/tick 1t replace
