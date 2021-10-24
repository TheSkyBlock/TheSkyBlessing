#> player_manager:god/flora/believe
#
#
#
# @within function player_manager:god/change_believe/believe

# 演出
    tellraw @s {"text":"フローラ「よくきたね。君を歓迎するよ...」"}
# 処理
    # 信仰タグ付与
        tag @s add Believe.Flora
    # 水攻撃+20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 10]
        data modify storage api: Argument.Amount set value 0.2
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/attack/water/add
    # 水耐性+20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 10]
        data modify storage api: Argument.Amount set value 0.2
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/defense/water/add
    # 火耐性-20%
        data modify storage api: Argument.UUID set value [1, 2, 0, 10]
        data modify storage api: Argument.Amount set value -0.2
        data modify storage api: Argument.Operation set value "multiply_base"
        function api:player_modifier/defense/fire/add