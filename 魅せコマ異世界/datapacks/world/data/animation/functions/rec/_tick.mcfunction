#> animation:rec/_tick
#
# アニメーションの録画
#
# @within function animation:_tick


# ストレージに実行者のデータをコピー
    # 座標
        data modify storage animation: rec.scene8.Pos append from entity @s Pos
    # 回転
        data modify storage animation: rec.scene8.Rotation append from entity @s Rotation