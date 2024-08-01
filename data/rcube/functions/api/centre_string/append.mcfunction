# Made by: @rcube.
# Append to array
#
# Called By: rcube:api/centre_text/centre

data modify storage rcube:api/centre_string output append value {array:'{"text":"\\u200c","bold":true}'}

# Increment loop run total by 1
scoreboard players remove $loop.runs_needed rcube_api.centre_string 1

# Loop until meets requirement for times run
execute unless score $loop.runs_needed rcube_api.centre_string matches ..0 run function rcube:api/centre_string/append