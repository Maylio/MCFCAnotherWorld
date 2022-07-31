#> core:scenes/3/_tick
#
# シーン3の処理
#
# @within function core:_tick


# トライデントを投げたら
    # 次のシーンへ
        execute if score @s Player.Throw.Trident matches 1.. run schedule function core:scenes/4/switch 10t
    # トライデント削除
        execute if score @s Player.Throw.Trident matches 1.. run clear @s trident
    # スコアリセット
        execute if score @s Player.Throw.Trident matches 1.. run scoreboard players reset @a[tag=Entity.Player.Pract] Player.Throw.Trident
