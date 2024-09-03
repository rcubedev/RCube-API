# Made by @rcube.
# Function used to check installed state

# Store versions
data modify storage rcube:api/scoreboard_rank version.this set value "0.4.0"
data modify storage rcube:api/scoreboard_rank version.minecraft set value "1.20.1"

# Set installed state
execute unless data storage rcube:api/scoreboard_rank {installed:true} run data modify storage rcube:api/scoreboard_rank installed set value true
