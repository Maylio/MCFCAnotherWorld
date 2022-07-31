#> core:scenes/8/switch
#
# シーン8に切り替え
#
# @within function core:scenes/7/switch


# テレポート
    tp @a[tag=Entity.Player.Pract] -38.87 -61.0 -34.62 0 0

# アイテム削除
    clear @a[tag=Entity.Player.Pract]

# 魔王降臨
    summon minecraft:warden -50.95 -59 -16.5 {Tags:["maou"],NoAI:true,Rotation:[180.0f,0.0f]}

# 3s後にゲート召喚
    schedule function core:scenes/8/gate 3s

# シーン変更
    scoreboard players set $scene Core.Instant 8
    scoreboard players set $scene Animation.Instant 8
    scoreboard players set $scene Attribute.Instant 8

# 移動速度変更
    function attribute:change