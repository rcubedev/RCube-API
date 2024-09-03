# Made by: @rcube.
# Run dependency check
#
# Called By: rcube:api/centre_string/installed

# Remove stale data
data remove storage rcube:api/centre_string private.dependencies
scoreboard players reset * rcubeAPI_centreString.deps

# Module 'px_calc'
execute if predicate rcube:px_calc/installed run function rcube:api/px_calc/installed
execute if predicate rcube:px_calc/installed if data storage rcube:api/px_calc {installed:true,version:{this:"0.3.0",minecraft:"1.20.1"}} run data modify storage rcube:api/centre_string private.dependencies append value {module:"px_calc",installed:true}
execute unless data storage rcube:api/centre_string private.dependencies[{module:"px_calc",installed:true}] run data modify storage rcube:api/centre_string private.dependencies append value {module:"px_calc",installed:false,missing:'[{"text":"   - ","color":"dark_gray"},{"text":"Module \'px_calc\'","color":"gray"}]'}

# Check if all dependencies are installed 
execute store result score $deps.required rcubeAPI_centreString.deps if data storage rcube:api/centre_string private.dependencies[]
execute store result score $deps.installed rcubeAPI_centreString.deps if data storage rcube:api/centre_string private.dependencies[{installed:true}]
execute if score $deps.installed rcubeAPI_centreString.deps = $deps.required rcubeAPI_centreString.deps run data modify storage rcube:api/centre_string private.dependencies prepend value {all:true}
execute unless score $deps.installed rcubeAPI_centreString.deps = $deps.required rcubeAPI_centreString.deps run data modify storage rcube:api/centre_string private.dependencies prepend value {all:false}
