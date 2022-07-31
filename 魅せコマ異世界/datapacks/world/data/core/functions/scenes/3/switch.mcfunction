#> core:scenes/3/switch
#
# シーン3に切り替え
#
# @public


# シーン変更
    scoreboard players set $scene Core.Instant 3
    scoreboard players set $scene Animation.Instant 3
    scoreboard players set $scene Attribute.Instant 3

# 移動速度変更
    function attribute:change