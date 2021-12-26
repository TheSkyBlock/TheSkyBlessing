#> asset:trader/0002.tool_merchant/register/register
#
#
#
# @within function asset:trader/0001.other_merchant/register/

# ID (int)
    data modify storage asset:trader ID set value 1
# 名前 (TextComponent) (オプション)
    data modify storage asset:trader Name set value '{"text":"雑貨商人"}'
# 方向 (float) (オプション)
    data modify storage asset:trader Rotation set value 0f
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:torch",Count:16b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:2b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:ladder",Count:1b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:4b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:scaffolding",Count:1b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:bone_meal",Count:1b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/",Count:8b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:item_frame",Count:1b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 取引
    data modify storage asset:trader Trades append value {}
    # 要求物1 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].BuyA set value {PresetItem:"currency/high",Count:16b}
    # 要求物2 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte }) (オプション)
        # data modify storage asset:trader Trades[-1].BuyB set value {id:"minecraft:egg",Count:1b}
    # 販売物 (int(sacred_treasureID) | { id: string, Count: byte } | { PresetItem: string(preset), Count: byte })
        data modify storage asset:trader Trades[-1].Sell set value {id:"minecraft:shulker_box",Count:1b}
    # 取引可能回数 (int) (オプション)
        # data modify storage asset:trader Trades[-1].MaxUses set value
# 登録
    function asset:trader/common/register