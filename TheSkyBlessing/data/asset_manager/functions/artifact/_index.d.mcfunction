#> asset_manager:artifact/_index.d
# @private

#> storage
# @within *
#   api:artifact/core/**
#   asset:artifact/*/enroll_pool
#   asset:artifact/*/register
#   asset_manager:artifact/**
#   player_manager:actionbar/
    #declare storage asset:artifact

#> 特殊クールダウン
# @within function
#   asset_manager:artifact/check/check_special_cooldown
#   asset_manager:artifact/use/
#   asset_manager:artifact/tick/
#   core:tick/
    #declare score_holder $ArtifactSpecialCooldown

#> Trigger検知用
# @within function
#   core:handler/**
    #declare tag TriggerFlag.ClickCarrot
    #declare tag TriggerFlag.UseItem
    #declare tag TriggerFlag.Sneak
    #declare tag TriggerFlag.UsingItem

#> check用の失敗フラグ
# @within function
#   asset_manager:artifact/check/**
    #declare tag CheckFailed

#> use_itemの誤検知対策タグ
# @within function
#   core:handler/drop
    #declare tag StrictCheckMainhand

#> セレクターテンプレート
# @within * asset:artifact/**
    #alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n]

#> クールダウン表示用
# @within function asset_manager:artifact/cooldown/**
    #declare score_holder $Cooldown
    #declare score_holder $Value
    #declare score_holder $NormalizedValue
    #declare score_holder $Max

#> 使用条件
# @within function
#   asset:artifact/*/*/check**
#   asset_manager:artifact/check/
#   asset_manager:artifact/use/
    #declare tag CanUsed
