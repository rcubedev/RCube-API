# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/core version.this.str set value "0.6.0"
data modify storage rcube:api/core version.this.major set value 0
data modify storage rcube:api/core version.this.minor set value 6
data modify storage rcube:api/core version.this.patch set value 0

# Store game version
data modify storage rcube:api/core version.game.str set value "1.20.1"
data modify storage rcube:api/core version.game.major set value 20
data modify storage rcube:api/core version.game.patch set value 1

# Set installed state
execute unless data storage rcube:api/core {installed:true} run data modify storage rcube:api/core installed set value true
