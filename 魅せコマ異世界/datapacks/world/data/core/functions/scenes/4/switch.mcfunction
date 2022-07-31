#> core:scenes/4/switch
#
# シーン4に切り替え
#
# @within function core:scenes/3/_tick


# トライデント削除
    kill @e[type=trident]

# トライデントを捏造
    execute as @e[tag=Entity.Chara] at @s run summon minecraft:trident ~ ~3 ~ {Tags:["Entity.Trident"],Motion:[0.0,0.0,0.63]}

# 1s後にゲート召喚
    schedule function core:scenes/4/gate 1s

# シーン変更
    scoreboard players set $scene Core.Instant 4
    scoreboard players set $scene Animation.Instant 4
    scoreboard players set $scene Attribute.Instant 4

# 移動速度変更
    function attribute:change