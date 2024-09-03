# Made by: @rcube.
# Run calculations needed to centre string

# Clear stale data
data remove storage rcube:api/centre_string private.temp

# Move data
data modify storage rcube:api/centre_string private.temp set from storage rcube:api/centre_string in
data remove storage rcube:api/centre_string in

# Find px count
execute if data storage rcube:api/centre_string {private:{temp:{manual:true}}} store result score $px rcubeAPI_centreString run data get storage rcube:api/centre_string private.temp.px
execute unless data storage rcube:api/centre_string {private:{temp:{manual:true}}} run data modify storage rcube:api/px_calc in.str set from storage rcube:api/player_name private.temp.str
execute unless data storage rcube:api/centre_string {private:{temp:{manual:true}}} if data storage rcube:api/centre_string {private:{temp:{bold:true}}} run data modify storage rcube:api/px_calc in.bold set value true
execute unless data storage rcube:api/centre_string {private:{temp:{manual:true}}} run function rcube:api/px_calc/run
execute unless data storage rcube:api/centre_string {private:{temp:{manual:true}}} store result score $px rcubeAPI_centreString run data get storage rcube:api/px_calc out.px

# Find px count needed to centre text (assumes default of 320px/line)
scoreboard players operation $px_needed rcubeAPI_centreString = $const.chat_width rcubeAPI_centreString.const
scoreboard players operation $px_needed rcubeAPI_centreString -= $px rcubeAPI_centreString
execute if score $px_needed rcubeAPI_centreString matches ..0 run scoreboard players set $px_needed rcubeAPI_centreString 0
scoreboard players operation $px_needed rcubeAPI_centreString /= =$num.2 rcubeAPI_centreString.const

# Clear output array
data remove storage rcube:api/centre_string out

# Prepare to loop output onto array
scoreboard players operation $loop rcubeAPI_centreString = $px_needed rcubeAPI_centreString

# Begin loop to append to array
function rcube:api/centre_string/zprivate/append
