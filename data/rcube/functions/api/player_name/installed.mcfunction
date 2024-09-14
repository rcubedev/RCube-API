# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/player_name version.this.str set value "0.8.0"
data modify storage rcube:api/player_name version.this.major set value 0
data modify storage rcube:api/player_name version.this.minor set value 8
data modify storage rcube:api/player_name version.this.patch set value 0

# Store game version
data modify storage rcube:api/player_name version.game.str set value "1.20.1"
data modify storage rcube:api/player_name version.game.major set value 20
data modify storage rcube:api/player_name version.game.patch set value 1

# Check deps
function rcube:api/player_name/zprivate/deps

# Set installed state
execute if data storage rcube:api/player_name {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/player_name installed set value true
execute unless data storage rcube:api/player_name {private:{dependencies:[{all:true}]}} run data modify storage rcube:api/player_name installed set value false
