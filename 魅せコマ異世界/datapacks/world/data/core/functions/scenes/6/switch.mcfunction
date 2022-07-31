#> core:scenes/6/switch
#
# シーン6に切り替え
#
# @within function core:scenes/5/_tick


# シーン変更
    scoreboard players set $scene Core.Instant 6
    scoreboard players set $scene Animation.Instant 6
    scoreboard players set $scene Attribute.Instant 6

# 15tick後に移動速度変更
    schedule function attribute:change 15t

# タグはく奪
    tag @a[tag=Entity.Player.Pract] remove Entity.Right
