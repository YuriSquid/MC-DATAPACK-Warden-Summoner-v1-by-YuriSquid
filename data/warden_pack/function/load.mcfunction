# Create the timer scoreboard
scoreboard objectives add warden_timer dummy

# Ensure the scoreboard is hidden from the screen
scoreboard objectives setdisplay sidebar

# Create the team for the player and wardens
team add warden_allies "Warden Allies"
team modify warden_allies friendlyFire false
team modify warden_allies seeFriendlyInvisibles true

# Notification that the pack loaded successfully
tellraw @a {"text":"Warden Summoner Datapack Loaded!","color":"green"}