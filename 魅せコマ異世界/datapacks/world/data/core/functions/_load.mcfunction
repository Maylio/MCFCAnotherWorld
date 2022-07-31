#> core:_load
# @within tag/function minecraft:load

#> 使い捨てのスコアを定義
# @internal
    scoreboard objectives add Core.Instant dummy {"text":"一時スコア"}

#> トライデントを投げたことを検知
# @internal
    scoreboard objectives add Player.Throw.Trident used:trident {"text":"トライデントを投げたことを検知"}

#> 右クリを検知
# @internal
    scoreboard objectives add Player.Right used:warped_fungus_on_a_stick {"text":"右クリを検知"}