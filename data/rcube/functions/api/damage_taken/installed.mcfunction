# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/damage_taken root.version.this.str set value "0.15.0"
data modify storage rcube:api/damage_taken root.version.this.major set value 0
data modify storage rcube:api/damage_taken root.version.this.minor set value 15
data modify storage rcube:api/damage_taken root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/damage_taken root.version.game.str set value "1.20.4"
data modify storage rcube:api/damage_taken root.version.game.major set value 20
data modify storage rcube:api/damage_taken root.version.game.patch set value 4

# Set installed state
execute unless data storage rcube:api/damage_taken root{installed:true} run data modify storage rcube:api/damage_taken root.installed set value true

# Return
return 1
