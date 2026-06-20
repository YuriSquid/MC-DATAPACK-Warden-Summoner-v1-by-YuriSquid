# 1. Add players holding/having the Conduit to the team
execute as @a[team=!warden_allies] if items entity @s container.* conduit[custom_data~{summon_conduit:1b}] run team join warden_allies @s
execute as @a[team=!warden_allies] if items entity @s weapon.* conduit[custom_data~{summon_conduit:1b}] run team join warden_allies @s

# 2. Remove players from the team if they drop or lose the Conduit
execute as @a[team=warden_allies] unless items entity @s container.* conduit[custom_data~{summon_conduit:1b}] unless items entity @s weapon.* conduit[custom_data~{summon_conduit:1b}] run team leave @s

# 3. Detect the dropped Nether Star using "contents"
execute as @e[type=item,tag=!valid_star] if items entity @s contents nether_star[custom_data~{warden_star:1b}] at @s if entity @a[team=warden_allies,distance=..10,limit=1] run tag @s add valid_star

# 4. Add to the timer ONLY if the valid star has physically hit the ground
execute as @e[type=item,tag=valid_star,nbt={OnGround:1b}] run scoreboard players add @s warden_timer 1

# 5. Trigger the spawn when the timer hits 40 ticks
execute as @e[type=item,tag=valid_star,scores={warden_timer=40..}] at @s run function warden_pack:spawn