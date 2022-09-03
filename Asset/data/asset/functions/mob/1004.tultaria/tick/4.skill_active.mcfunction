#> asset:mob/1004.tultaria/tick/4.skill_active
#
# スキル使用中タグがついてる間実行し続ける
#
# @within function asset:mob/1004.tultaria/tick/**

# 近接
    execute if entity @s[tag=RW.SkillMelee] run function asset:mob/1004.tultaria/tick/skill/1.melee_attack/1.tick
# メテオレイン
    execute if entity @s[tag=RW.SkillMeteor] run function asset:mob/1004.tultaria/tick/skill/2.meteor_attack/1.tick
# 座標
    execute if entity @s[tag=RW.SkillCoordinate] run function asset:mob/1004.tultaria/tick/skill/3.coordinate_attack/1.tick
# 座標外し
    execute if entity @s[tag=RW.SkillOffCoordinate] run function asset:mob/1004.tultaria/tick/skill/4.off_coordinate_attack/1.off_coordinate_attack
# 弾攻撃
    execute if entity @s[tag=RW.SkillBall] run function asset:mob/1004.tultaria/tick/skill/5.ball_attack/1.ball_attack
# 流星
    execute if entity @s[tag=RW.SkillStarfury] run function asset:mob/1004.tultaria/tick/skill/6.starfury_attack/1.starfury_attack
# 召喚
    execute if entity @s[tag=RW.SkillSummon] run function asset:mob/1004.tultaria/tick/skill/7.star_summon/1.star_summon
# ショット
    execute if entity @s[tag=RW.SkillLaser] run function asset:mob/1004.tultaria/tick/skill/8.n_way_bullet/1.tick

# 大技その1
    execute if entity @s[tag=RW.SkillDeadly1] run function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick