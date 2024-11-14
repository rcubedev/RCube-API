# Made by @rcube.
# Function used to check installed state

# Store version
data modify storage rcube:api/death_location root.version.this.str set value "0.2.1"
data modify storage rcube:api/death_location root.version.this.major set value 0
data modify storage rcube:api/death_location root.version.this.minor set value 2
data modify storage rcube:api/death_location root.version.this.patch set value 1

# Store game version
data modify storage rcube:api/death_location root.version.game.str set value "1.20.2"
data modify storage rcube:api/death_location root.version.game.major set value 20
data modify storage rcube:api/death_location root.version.game.patch set value 2

# Set installed state
execute unless data storage rcube:api/death_location root{installed:true} run data modify storage rcube:api/death_location root.installed set value true
