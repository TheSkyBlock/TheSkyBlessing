#> asset:mob/0327.eclael/tick/app.1_1.select_skill
#
# 使用するスキルを決定する
#
# @within function asset:mob/0327.eclael/tick/2.tick

# デバッグ用強制再生
    tag @s add 93.Skill.Former.Shot
# デバッグ用初期位置移動
    tp @s 187 210.5 14

# 前半
    # execute unless entity @s[tag=8T.Weapon.HasSword] run function asset:mob/0327.eclael/tick/app.1_2.select_skill_rod

# 後半
    # execute if entity @s[tag=8T.Weapon.HasSword] run function asset:mob/0327.eclael/tick/app.1_3.select_skill_sword