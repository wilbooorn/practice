def is_valid?(i, j, matrix)
  return false if i < 0 || j < 0 || i >= matrix.length || j >= matrix[0].length
  true
end

def diagonal(matrix)
  row = matrix.length
  column = matrix[0].length
  (0...row).each do |idx|
    puts matrix[idx][0]
    i = idx - 1
    j = 1
    while is_valid?(i, j, matrix)
      puts matrix[i][j]
      i -= 1
      j += 1
    end
  end

  (1...column).each do |idx|
    puts matrix[row - 1][idx]
    i = row - 2
    j = idx + 1
    while is_valid?(i, j, matrix)
      puts matrix[i][j]
      i -= 1
      j += 1
    end
  end
end


a = [[1,  2,  3,  4],
     [5,  6,  7,  8],
     [9,  10, 11, 12],
     [13, 14, 15, 16]]

diagonal(a)
