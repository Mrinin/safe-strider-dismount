#> the start of something beatiful
scoreboard objectives add ssd_riding dummy
scoreboard objectives add ssd_dismounted dummy
scoreboard objectives add ssd_y1 dummy
scoreboard objectives add ssd_y1000 dummy
scoreboard objectives add ssd_conditions_met dummy
scoreboard objectives add ssd_mountagaintimer dummy

scoreboard players set 1000 ssd_y1 1000

# https://www.reddit.com/user/Mrinin

tellraw @a {"text":"______________________________________","color":"yellow","underlined":true}
tellraw @a {"text":" "}
tellraw @a [{"text":"Safe","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open in GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mrinin/safe-strider-dismount"}},{"text":" Strider ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open in GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mrinin/safe-strider-dismount"}},{"text":"Dismount","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open in GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mrinin/safe-strider-dismount"}},{"text":" by ","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open in GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mrinin/safe-strider-dismount"}},{"text":"Mrinin","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to open in GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mrinin/safe-strider-dismount"}}]
tellraw @a [{"text":"● ","color":"yellow"},{"text":"When trying to dismount a strider while over lava, this datapack prevents you from getting off!","color":"white"}]
tellraw @a [{"text":"● ","color":"yellow"},{"text":"If you really want to burn on lava for some reason, you may hold the sneak key to bypass this datapack.","color":"white"}]
tellraw @a {"text":"______________________________________","color":"yellow","underlined":true}