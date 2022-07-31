#> animation:_load
# @within tag/function minecraft:load

#> 使い捨てのスコアを定義
# @internal
    scoreboard objectives add Animation.Instant dummy {"text":"一時スコア"}

# ストレージを整備
    execute unless data storage animation: rec.scene2.Pos run data modify storage animation: rec.scene2.Pos set value []
    execute unless data storage animation: rec.scene2.Rotation run data modify storage animation: rec.scene2.Rotation set value []
    execute unless data storage animation: rec.scene8.Pos run data modify storage animation: rec.scene8.Pos set value []
    execute unless data storage animation: rec.scene8.Rotation run data modify storage animation: rec.scene8.Rotation set value []
    execute unless data storage animation: play.Pos run data modify storage animation: play.Pos set value []
    execute unless data storage animation: play.Rotation run data modify storage animation: play.Rotation set value []