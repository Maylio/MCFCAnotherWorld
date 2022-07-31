#> core:scenes/5/switch
#
# シーン5に切り替え
#
# @within function core:scenes/4/gate


# シーン変更
    scoreboard players set $scene Core.Instant 5
    scoreboard players set $scene Animation.Instant 5
    scoreboard players set $scene Attribute.Instant 5

# 移動速度変更
    function attribute:change