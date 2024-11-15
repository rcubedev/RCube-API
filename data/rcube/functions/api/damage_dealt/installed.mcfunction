# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/damage_dealt root.version.this.str set value "0.5.0"
data modify storage rcube:api/damage_dealt root.version.this.major set value 0
data modify storage rcube:api/damage_dealt root.version.this.minor set value 5
data modify storage rcube:api/damage_dealt root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/damage_dealt root.version.game.str set value "1.20.5"
data modify storage rcube:api/damage_dealt root.version.game.major set value 20
data modify storage rcube:api/damage_dealt root.version.game.patch set value 5

# Set installed state
execute unless data storage rcube:api/damage_dealt root{installed:true} run data modify storage rcube:api/damage_dealt root.installed set value true

# Return
return 1
