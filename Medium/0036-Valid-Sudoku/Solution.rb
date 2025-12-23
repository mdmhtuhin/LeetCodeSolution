# Time: 149 ms (%), Space: 211 MB (%)

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    rows = Array.new(9) { Set.new }
    cols = Array.new(9) { Set.new }
    sub_boxes = Array.new(9) { Set.new }
    
    board.each_with_index do |row, index|
        row.each_with_index do | col, ind|
            next if col == "."
            if rows[index].include?(col)
                return false
            end
            rows[index].add(col)
            
            if cols[ind].include?(col)
                return false
            end
            cols[ind].add(col)
            
            sub_boxes_indx = (index / 3) * 3 + ind / 3
            if sub_boxes[sub_boxes_indx].include?(col)
                return false
            end
            sub_boxes[sub_boxes_indx].add(col)
            
        end
    end
    return true
end