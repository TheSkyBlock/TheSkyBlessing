#> asset:island/24/register/register
# 
# 島の定義データ
# 
# @within function asset:island/24/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:172,Y:162,Z:172}

# ID (int)
    data modify storage asset:island ID set value 24
# Rotation (float)
    data modify storage asset:island Rotation set value 180f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register