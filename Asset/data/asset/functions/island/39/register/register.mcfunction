#> asset:island/39/register/register
# 
# 島の定義データ
# 
# @within function asset:island/39/register/


# 重複防止レジストリに登録
    data modify storage asset:island DPR append value {D:Overworld,X:-126,Y:139,Z:-126}

# ID (int)
    data modify storage asset:island ID set value 39
# Rotation (float)
    data modify storage asset:island Rotation set value 0f
# BOSS ID (int) (Optional)
    # data modify storage asset:island BossID set value 

function asset:island/common/register