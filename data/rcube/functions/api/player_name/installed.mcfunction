# Made by @rcube.
# Function used to check installed state

# Store versions
data modify storage rcube:api/player_name version.this set value "0.6.0"
data modify storage rcube:api/player_name version.minecraft set value "1.20.1"

# Check deps
function rcube:api/player_name/zprivate/deps

# Set installed state
execute if data storage rcube:api/player_name {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/player_name installed set value true
execute unless data storage rcube:api/player_name {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/player_name installed set value false
