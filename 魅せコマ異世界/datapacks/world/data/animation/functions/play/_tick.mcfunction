#> animation:play/_tick
#
# アニメーションの読み込み
#
# @within function core:scenes/2/_tick


# コピーが無い場合recから持ってくる
    # シーン2
        execute if score $scene Animation.Instant matches 2 unless data storage animation: play.Pos[0] run data modify storage animation: play.Pos set from storage animation: rec.scene2.Pos
        execute if score $scene Animation.Instant matches 2 unless data storage animation: play.Rotation[0] run data modify storage animation: play.Rotation set from storage animation: rec.scene2.Rotation
    # シーン8
        execute if score $scene Animation.Instant matches 8 unless data storage animation: play.Pos[0] run data modify storage animation: play.Pos set from storage animation: rec.scene8.Pos
        execute if score $scene Animation.Instant matches 8 unless data storage animation: play.Rotation[0] run data modify storage animation: play.Rotation set from storage animation: rec.scene8.Rotation

# 実行者にストレージのデータをコピー
    # 座標
        data modify entity @s Pos set from storage animation: play.Pos[0]
    # 回転
        data modify entity @s Rotation set from storage animation: play.Rotation[0]

# 一番後ろを削る
    data remove storage animation: play.Pos[0]
    data remove storage animation: play.Rotation[0]

# 全部なくなったらタグをはく奪
    execute unless data storage animation: play.Pos[0] run tag @s remove Animation.Play