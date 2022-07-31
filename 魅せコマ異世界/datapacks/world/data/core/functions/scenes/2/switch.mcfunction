#> core:scenes/2/switch
#
# シーン2に切り替え
#
# @public


# 村人を召喚
    summon villager -21.56 -62.00 84.53 {NoAI:true,Tags:["Entity.Chara","Animation.Play"]}

# 5秒後にシーン3に移行
    schedule function core:scenes/3/switch 5s

# シーン変更
    scoreboard players set $scene Core.Instant 2
    scoreboard players set $scene Animation.Instant 2
    scoreboard players set $scene Attribute.Instant 2

# 移動速度変更
    function attribute:change