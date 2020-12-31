#> asset:sacred_treasure/0187.cloranthy_wand/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0187.cloranthy_wand/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:end_rod ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..30]
    playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 20 2

# 土系ブロックを草ブロックに置換する
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:dirt
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:coarse_dirt
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:podzol
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:mycelium
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:warped_nylium
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:crimson_nylium
    fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:grass_block replace minecraft:soul_soil