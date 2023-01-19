#> something beatiful might be in danger of third degree burns!
scoreboard players set @s ssd_conditions_met 0

# get the Y coordinate of the player with 1 and 1000 scales
execute store result score @s ssd_y1 run data get entity @s Pos[1] 1
execute store result score @s ssd_y1000 run data get entity @s Pos[1] 1000

# this removes the whole number part of the Y coordinate
scoreboard players operation @s ssd_y1 *= 1000 ssd_y1
scoreboard players operation @s ssd_y1000 -= @s ssd_y1

# The player is always dismounted EXACTLY 0.2 or 0.05 blocks above the block (0.2 in survival 0.05 in creative for some reason)
execute if entity @s[scores={ssd_y1000=200}] run scoreboard players add @s ssd_conditions_met 1
execute if entity @s[scores={ssd_y1000=50}] run scoreboard players add @s ssd_conditions_met 1

# Check if the player is riding the striden on the lava surface
execute if block ~ ~-1.25 ~ lava if block ~ ~-1.0 ~ air run scoreboard players add @s ssd_conditions_met 1

# Stop this if the player dismounted safely
execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ssd_conditions_met 1

# This starts a 2 tick long timer to re-mount the player, since mounting him again in the same tick is broken.
# the action bar is written twice because "Press SHIFT to dismount" overrides this.
# (this also unintentionally allows the use of holding shift for 5 ticks to bypass the datapack)
execute if entity @s[scores={ssd_conditions_met=2..}] run title @s actionbar "You can not dismount right now, you're over lava!"
execute if entity @s[scores={ssd_conditions_met=2..}] run scoreboard players set @s ssd_mountagaintimer 5

#execute as @p store result score @s test_dummy run data get entity @s Pos[1] 10000
#tellraw @a {"score":{"name":"@p","objective":"test_dummy"},"color":"gray"}