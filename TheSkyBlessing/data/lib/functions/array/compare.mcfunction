#> lib:array/compare
#
# 配列の各要素について同一であるかを比較し、その結果の配列を返します。
#
# Array, Array2の要素の数は同一である必要があります。
#
# @input
#   storage lib: ArrayA: [any] @ N
#   比較配列A
#   storage lib: ArrayB: [any] @ N
#   比較配列B
# @output
#   storage lib: CompareResult: [{ _: { _: boolean } }] @ N
# @api

# セッションチェック
    execute if data storage lib: {ArrayLibSessionOpened:false} run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"lib:array/のセッションが開かれずに利用されています。","color":"white"}]

# 再帰的に動かす
    execute if data storage lib: Array[0] if data storage lib: Array2[0] run function lib:array/core/compare

# 結果を反転
    function lib:array/reverse
    data modify storage lib: CompareResult set from storage lib: Array

# リセット
    data remove storage lib: Array
    scoreboard players reset $Temp Temporary