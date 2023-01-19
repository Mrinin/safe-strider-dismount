#> the current version of something beatiful

# This stores whether the player is riding the strider in the previous tick
execute as @a run scoreboard players operation @s ssd_dismounted = @s ssd_riding

scoreboard players set @a ssd_riding 0
#execute as @a on vehicle if entity @s[type=minecraft:strider] on passengers run say h
execute as @a on vehicle if entity @s[type=minecraft:strider] on passengers run scoreboard players set @s ssd_riding 1

# This function is ran when the player was riding the last tick, but not in this tick, meaning the player has dismounted in this tick.
execute as @a[scores={ssd_riding=0,ssd_dismounted=1}] at @s run function ssd_func:dismounted

# The player is always dismounted EXACTLY 2.2 blocks above the lava.

execute as @a[scores={ssd_mountagaintimer=3}] at @s run ride @s mount @e[type=minecraft:strider,sort=nearest,limit=1,distance=..2]
execute as @a[scores={ssd_mountagaintimer=2}] run title @s actionbar "You can not dismount right now, you're over lava!"
execute as @a[scores={ssd_mountagaintimer=1}] run title @s actionbar "You can not dismount right now, you're over lava!"
execute as @a[scores={ssd_mountagaintimer=1..}] run scoreboard players remove @s ssd_mountagaintimer 1