# Summon a lightning strike at the exact location of the star
summon lightning_bolt ~ ~ ~

# Summon 5 Wardens with a temporary tag AND the Brain memory fix to stop digging
summon warden ~ ~ ~ {Tags:["friendly_warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200000L}}}}
summon warden ~ ~ ~ {Tags:["friendly_warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200000L}}}}
summon warden ~ ~ ~ {Tags:["friendly_warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200000L}}}}
summon warden ~ ~ ~ {Tags:["friendly_warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200000L}}}}
summon warden ~ ~ ~ {Tags:["friendly_warden"],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200000L}}}}

# Add the newly spawned Wardens to the player's team so they don't attack the summoner
team join warden_allies @e[type=warden,tag=friendly_warden]

# Remove the temporary tag so future summons don't interfere
tag @e[type=warden,tag=friendly_warden] remove friendly_warden

# Play a sound effect and add some particles
playsound minecraft:entity.warden.emerge hostile @a ~ ~ ~ 1 1
particle minecraft:sonic_boom ~ ~1 ~ 1 1 1 0.1 10 normal

# Despawn the Nether Star
kill @s