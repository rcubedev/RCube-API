# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/px_calc root.version.this.str set value "0.6.0"
data modify storage rcube:api/px_calc root.version.this.major set value 0
data modify storage rcube:api/px_calc root.version.this.minor set value 6
data modify storage rcube:api/px_calc root.version.this.patch set value 0

# Store game version
data modify storage rcube:api/px_calc root.version.game.str set value "1.20.1"
data modify storage rcube:api/px_calc root.version.game.major set value 20
data modify storage rcube:api/px_calc root.version.game.patch set value 1

# Set installed state
execute unless data storage rcube:api/px_calc root{installed:true} run data modify storage rcube:api/px_calc root.installed set value true
