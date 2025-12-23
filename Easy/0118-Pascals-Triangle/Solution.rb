# Time: 97 ms (%), Space: 211 MB (%)

# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    triangle = []
    (0..num_rows-1).each{ |r|
        lst = [1]
        term = 1
        k = 1
        (0..r-1).step(1){|index|
            term = term*(r-k+1)/k
            lst.push term 
            k += 1
        }
        triangle << lst
    }
    triangle
end