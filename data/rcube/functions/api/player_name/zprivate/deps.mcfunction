# Made by: @rcube.
# Run dependency check
#
# Called By: rcube:api/player_name/load

# Remove stale data
data remove storage rcube:api/player_name root.private.dependencies
scoreboard players reset * rcubeAPI_playerName.deps

# #####################
# Module 'core'
# #####################
# Store versions
execute if predicate rcube:api/_core/installed run function rcube:api/_core/installed
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.major rcubeAPI_playerName.deps run data get storage rcube:api/core root.version.this.major
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.minor rcubeAPI_playerName.deps run data get storage rcube:api/core root.version.this.minor
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.patch rcubeAPI_playerName.deps run data get storage rcube:api/core root.version.this.patch
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.game.major rcubeAPI_playerName.deps run data get storage rcube:api/core root.version.game.major
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} store result score $ver.core.game.patch rcubeAPI_playerName.deps run data get storage rcube:api/core root.version.game.patch

# Set state
execute if predicate rcube:api/_core/installed if data storage rcube:api/core root{installed:true} if score $ver.core.major rcubeAPI_playerName.deps matches 0 if score $ver.core.minor rcubeAPI_playerName.deps matches 11 if score $ver.core.patch rcubeAPI_playerName.deps matches 0 if score $ver.core.game.major rcubeAPI_playerName.deps matches 20 if score $ver.core.game.patch rcubeAPI_playerName.deps matches 1 run data modify storage rcube:api/player_name root.private.dependencies append value {module:"core",installed:true}
execute unless data storage rcube:api/player_name root.private.dependencies[{module:"core",installed:true}] run data modify storage rcube:api/player_name root.private.dependencies append value {module:"core",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'core\'","color":"gray"}]'}

# #####################
# Check if all dependencies are installed 
execute store result score $deps.required rcubeAPI_playerName.deps if data storage rcube:api/player_name root.private.dependencies[]
execute store result score $deps.installed rcubeAPI_playerName.deps if data storage rcube:api/player_name root.private.dependencies[{installed:true}]
execute if score $deps.installed rcubeAPI_playerName.deps = $deps.required rcubeAPI_playerName.deps run data modify storage rcube:api/player_name root.private.dependencies prepend value {all:true}
execute unless score $deps.installed rcubeAPI_playerName.deps = $deps.required rcubeAPI_playerName.deps run data modify storage rcube:api/player_name root.private.dependencies prepend value {all:false}
