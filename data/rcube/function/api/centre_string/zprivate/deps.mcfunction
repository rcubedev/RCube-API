# Made by: @rcube.
# Run dependency check
#
# Called By: rcube:api/centre_string/installed

# If scoreboard doesn't exist, create it
# (This occurs if the dependent project loads before this module- the scoreboard is created after ONLY IF FIRST LOAD)
scoreboard objectives add rcubeAPI_centreString.deps dummy "[rcube:api/centre_string] Dependencies"

# Remove stale data
data remove storage rcube:api/centre_string root.private.dependencies
scoreboard players reset * rcubeAPI_centreString.deps

# #####################
# Module 'px_calc'
# #####################
# Store versions
execute if predicate rcube:api/px_calc/installed run function rcube:api/px_calc/installed
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.major rcubeAPI_centreString.deps run data get storage rcube:api/px_calc root.version.this.major
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.minor rcubeAPI_centreString.deps run data get storage rcube:api/px_calc root.version.this.minor
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.patch rcubeAPI_centreString.deps run data get storage rcube:api/px_calc root.version.this.patch
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.game.major rcubeAPI_centreString.deps run data get storage rcube:api/px_calc root.version.game.major
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} store result score $ver.px_calc.game.patch rcubeAPI_centreString.deps run data get storage rcube:api/px_calc root.version.game.patch

# Set state
execute if predicate rcube:api/px_calc/installed if data storage rcube:api/px_calc root{installed:true} if score $ver.px_calc.major rcubeAPI_centreString.deps matches 0 if score $ver.px_calc.minor rcubeAPI_centreString.deps matches 10 if score $ver.px_calc.patch rcubeAPI_centreString.deps matches 0 if score $ver.px_calc.game.major rcubeAPI_centreString.deps matches 21 if score $ver.px_calc.game.patch rcubeAPI_centreString.deps matches 2 run data modify storage rcube:api/centre_string root.private.dependencies append value {module:"px_calc",installed:true}
execute unless data storage rcube:api/centre_string root.private.dependencies[{module:"px_calc",installed:true}] run data modify storage rcube:api/centre_string root.private.dependencies append value {module:"px_calc",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'px_calc\'","color":"gray"}]'}

# #####################
# Check if all dependencies are installed 
execute store result score $deps.required rcubeAPI_centreString.deps if data storage rcube:api/centre_string root.private.dependencies[]
execute store result score $deps.installed rcubeAPI_centreString.deps if data storage rcube:api/centre_string root.private.dependencies[{installed:true}]
execute if score $deps.installed rcubeAPI_centreString.deps = $deps.required rcubeAPI_centreString.deps run data modify storage rcube:api/centre_string root.private.dependencies prepend value {all:true}
execute unless score $deps.installed rcubeAPI_centreString.deps = $deps.required rcubeAPI_centreString.deps run data modify storage rcube:api/centre_string root.private.dependencies prepend value {all:false}
