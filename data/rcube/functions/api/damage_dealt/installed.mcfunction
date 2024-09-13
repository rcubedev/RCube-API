# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/damage_dealt version.this.str set value "0.10.0"
data modify storage rcube:api/damage_dealt version.this.major set value 0
data modify storage rcube:api/damage_dealt version.this.minor set value 10
data modify storage rcube:api/damage_dealt version.this.patch set value 0

# Store game version
data modify storage rcube:api/damage_dealt version.game.str set value "1.20.1"
data modify storage rcube:api/damage_dealt version.game.major set value 20
data modify storage rcube:api/damage_dealt version.game.patch set value 1

# Set installed state
execute unless data storage rcube:api/damage_dealt {installed:true} run data modify storage rcube:api/damage_dealt installed set value true
