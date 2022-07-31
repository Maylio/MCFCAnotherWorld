#> core:scenes/7/switch
#
# シーン7に切り替え
#
# @within function core:scenes/6/_tick


# 音鳴らす
    playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 1.0 1.5
    playsound minecraft:block.anvil.place master @a ~ ~ ~ 2.0 2.0
    playsound minecraft:block.anvil.place master @a ~ ~ ~ 2.0 0.2

# 村人飛ばし
    # NoAI
        execute as @e[tag=Entity.Chara] at @s run data modify entity @s NoAI set value false
    # Motion
        execute as @e[tag=Entity.Chara] at @s run data modify entity @s Motion set value [0.0,0.55,5.0]

# 2秒後にシーン8に移行
    schedule function core:scenes/8/switch 2s

# シーン変更
    scoreboard players set $scene Core.Instant 7
    scoreboard players set $scene Animation.Instant 7
    scoreboard players set $scene Attribute.Instant 7

# 移動速度変更
    function attribute:change