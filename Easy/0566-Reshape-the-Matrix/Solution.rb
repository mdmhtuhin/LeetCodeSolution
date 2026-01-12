# Time: 107 ms (0%), Space: 211.5 MB (100%)

# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
    rows = mat.length;
    cols = mat[0].length;
    return mat if (rows * cols) != (r*c)
    k = 0
    mat = mat.flatten.reverse
    ans = Array.new(r){ Array.new(c)}
    while k < r
        if c == 1
            ans[k][c-1] = mat.pop()
        else
            for l in 0..c-1 do
                ans[k][l] = mat.pop()
            end
        end
        k += 1
    end
    ans
            
        
end