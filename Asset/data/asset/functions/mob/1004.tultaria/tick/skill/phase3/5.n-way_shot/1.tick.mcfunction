#> asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/1.tick
#
#
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup

# 放つ
    execute if score @s RW.Tick matches 10 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/4.shoot

# 構える
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup

# 放つ
    execute if score @s RW.Tick matches 25 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/4.shoot

# 構える
    execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/2.windup

# 放つ
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/phase3/5.n-way_shot/4.shoot

# デバッグ用、技をループする
    #execute if score @s RW.Tick matches 70 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/reset