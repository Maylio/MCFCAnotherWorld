#> core:scenes/1/switch
#
# シーン1に切り替え
#
# @public


# 実行者にする
    tag @s add Entity.Player.Pract

# シーン変更
    scoreboard players set $scene Core.Instant 1
    scoreboard players set $scene Animation.Instant 1
    scoreboard players set $scene Attribute.Instant 1

# 移動速度変更
    function attribute:change