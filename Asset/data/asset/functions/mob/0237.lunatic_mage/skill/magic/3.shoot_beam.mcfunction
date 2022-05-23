#> asset:mob/0237.lunatic_mage/skill/magic/3.shoot_beam
#
# ビームの発射処理
#
# @within function asset:mob/0237.lunatic_mage/skill/magic/1

# 演出
    execute positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^15 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^20 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^25 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^30 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^35 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^40 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes
    execute positioned ^ ^ ^45 run function asset:mob/0237.lunatic_mage/skill/magic/4.shapes

# 音で相手の位置がわかるように
    execute as @a[distance=..50] at @s facing entity @e[type=husk,tag=this,distance=..52] eyes positioned ^ ^ ^3 run function asset:mob/0237.lunatic_mage/skill/magic/sound

# 再帰
    function asset:mob/0237.lunatic_mage/skill/magic/5.beam_recursive

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..52] run function asset:mob/0237.lunatic_mage/skill/magic/6.hit