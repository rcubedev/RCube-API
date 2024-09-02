# Made by: @rcube.
# Run calculations needed to centre string

# Clear stale data
data remove storage rcube:api/px_calc private.temp
scoreboard players reset $px rcubeAPI_pxCalc
scoreboard players reset #px.temp rcubeAPI_pxCalc
scoreboard players reset $loop rcubeAPI_pxCalc

# Move data
data modify storage rcube:api/px_calc private.temp set from storage rcube:api/px_calc in
data remove storage rcube:api/px_calc in

# Store character count
execute store result score $char_count rcubeAPI_pxCalc store result score $loop rcubeAPI_pxCalc run data get storage rcube:api/px_calc private.temp.str

# Get pixel length
data modify storage rcube:api/px_calc private.temp.chop1 set from storage rcube:api/px_calc private.temp.str
function rcube:api/px_calc/zprivate/length

# Adjust for bold
execute if data storage rcube:api/px_calc {private:{temp:{bold:true}}} run scoreboard players operation $px rcubeAPI_pxCalc += $char_count rcubeAPI_pxCalc

# Set output
execute store result storage rcube:api/px_calc out.px int 1 run scoreboard players get $px rcubeAPI_pxCalc
