# Made by: @rcube.
# Output array to centre text
#
# Called By: rcube:api/centre_text/tick

# Clear stale data
data remove storage rcube:api/centre_string private.temp

# Prevent loop
data modify storage rcube:api/centre_string private.temp set from storage rcube:api/centre_string input
data remove storage rcube:api/centre_string input
# data modify storage rcube:api/centre_string temp.string set from storage rcube:api/centre_string input.string
# data modify storage rcube:api/centre_string temp.bold set from storage rcube:api/centre_string input.bold
# data remove storage rcube:api/centre_string input.string
# data remove storage rcube:api/centre_string input.bold

# Store character count
execute store result score $char_count rcube_api.centre_string run data get storage rcube:api/centre_string temp.string

# Get pixel approximation
scoreboard players operation $px rcube_api.centre_string = $char_count rcube_api.centre_string
scoreboard players operation $px rcube_api.centre_string *= $const.char_px rcube_api.centre_string
execute if score $px rcube_api.centre_string > $const.chat_width rcube_api.centre_string run scoreboard players operation $px rcube_api.centre_string = $const.chat_width rcube_api.centre_string 
execute if data storage rcube:api/centre_string {private:{temp:{bold:true}}} run scoreboard players operation $px rcube_api.centre_string += $char_count rcube_api.centre_string

# Find px count needed to centre text (assume default of 320px/line)
scoreboard players operation $px_needed rcube_api.centre_string = $const.chat_width rcube_api.centre_string
scoreboard players operation $px_needed rcube_api.centre_string -= $px rcube_api.centre_string
scoreboard players operation $px_needed rcube_api.centre_string /= =$num.2 rcube_api.centre_string

# Clear output array
data modify storage rcube:api/centre_string out set value [{array:'""'}]

# Prepare to loop output onto array
scoreboard players operation $loop.runs_needed rcube_api.centre_string = $px_needed rcube_api.centre_string
# Addon empty character to disable inheritence
# Begin loop to append to array
function rcube:api/centre_string/zprivate/append
