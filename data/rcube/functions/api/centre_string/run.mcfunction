# Made by: @rcube.
# Run calculations needed to centre string

# Clear stale data
data remove storage rcube:api/centre_string private.temp

# Move data
data modify storage rcube:api/centre_string private.temp set from storage rcube:api/centre_string in
data remove storage rcube:api/centre_string in
# data modify storage rcube:api/centre_string private.temp.string set string storage rcube:api/centre_string in.string
# data modify storage rcube:api/centre_string private.temp.bold set from storage rcube:api/centre_string in.bold
# data modify storage rcube:api/centre_string private.temp.extra.chars set from storage rcube:api/centre_string in.extra.chars
# data modify storage rcube:api/centre_string private.temp.extra.px set from storage rcube:api/centre_string in.extra.px
# data modify storage rcube:api/centre_string private.temp.extra.bold set from storage rcube:api/centre_string in.extra.bold
# data remove storage rcube:api/centre_string in.string
# data remove storage rcube:api/centre_string in.bold
# data remove storage rcube:api/centre_string in.extra.chars
# data remove storage rcube:api/centre_string in.extra.px
# data remove storage rcube:api/centre_string in.extra.bold

# Store character count
execute store result score $char_count rcubeAPI_centreString run data get storage rcube:api/centre_string private.temp.string
execute if data storage rcube:api/centre_string {private:{temp:{extra:{chars:true}}}} unless data storage rcube:api/centre_string {private:{temp:{extra:{bold:true}}}} run scoreboard players operation $char_count rcubeAPI_centreString += $in.char_count.extra rcubeAPI_centreString

# Get pixel approximation
scoreboard players operation $px rcubeAPI_centreString = $char_count rcubeAPI_centreString
scoreboard players operation $px rcubeAPI_centreString *= $const.char_px rcubeAPI_centreString.const
execute if data storage rcube:api/centre_string {private:{temp:{chars:true}}} run scoreboard players operation $px.extra rcubeAPI_centreString = $in.char_count.extra rcubeAPI_centreString
execute if data storage rcube:api/centre_string {private:{temp:{chars:true}}} run scoreboard players operation $px.extra rcubeAPI_centreString *= $const.char_px rcubeAPI_centreString.const
execute if data storage rcube:api/centre_string {private:{temp:{bold:true}}} run scoreboard players operation $px rcubeAPI_centreString += $char_count rcubeAPI_centreString
execute if data storage rcube:api/centre_string {private:{temp:{extra:{chars:true,bold:true}}}} run scoreboard players operation $px.extra rcubeAPI_centreString += $in.char_count.extra rcubeAPI_centreString
execute if data storage rcube:api/centre_string {private:{temp:{extra:{chars:true}}}} run scoreboard players operation $px rcubeAPI_centreString += $px.extra rcubeAPI_centreString
execute if data storage rcube:api/centre_string {private:{temp:{extra:{px:true}}}} run scoreboard players operation $px rcubeAPI_centreString += $in.px.extra rcubeAPI_centreString
execute if score $px rcubeAPI_centreString > $const.chat_width rcubeAPI_centreString.const run scoreboard players operation $px rcubeAPI_centreString = $const.chat_width rcubeAPI_centreString.const

# Find px count needed to centre text (assume default of 320px/line)
scoreboard players operation $px_needed rcubeAPI_centreString = $const.chat_width rcubeAPI_centreString.const
scoreboard players operation $px_needed rcubeAPI_centreString -= $px rcubeAPI_centreString
scoreboard players operation $px_needed rcubeAPI_centreString /= =$num.2 rcubeAPI_centreString.const

# Clear output array
data remove storage rcube:api/centre_string out

# Prepare to loop output onto array
scoreboard players operation $loop.runs_needed rcubeAPI_centreString = $px_needed rcubeAPI_centreString
# Addon empty character to disable inheritence
# Begin loop to append to array
function rcube:api/centre_string/zprivate/append
