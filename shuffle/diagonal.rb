def is_valid?(i, j, matrix)
  return false if i < 0 || j < 0 || i >= matrix.length || j >= matrix[0].length
  true
end

def diagonal(matrix)
  row = matrix.length
  column = matrix[0].length
  (0...row).each do |idx|
    print "#{matrix[idx][0]} "
    i = idx - 1
    j = 1
    while is_valid?(i, j, matrix)
      print "#{matrix[i][j]} "
      i -= 1
      j += 1
    end
    print "\n"
  end

  (1...column).each do |idx|
    print "#{matrix[row - 1][idx]} "
    i = row - 2
    j = idx + 1
    while is_valid?(i, j, matrix)
      print "#{matrix[i][j]} "
      i -= 1
      j += 1
    end
    print "\n"
  end
end

a = [[1,  2,  3,  4, 17],
     [5,  6,  7,  8, 18],
     [9,  10, 11, 12, 19],
     [13, 14, 15, 16, 20]]

diagonal(a)






































def diagonal(matrix)
  row = matrix.length
  column = matrix[0].length
  (0...row).each do |idx|
    print "#{matrix[idx][0]} "
    i = idx - 1
    j = 1
    while is_valid?(i, j, matrix)
      print "#{matrix[i][j]} "
      i -= 1
      j += 1
    end
    print "\n"
  end

  (1...column).each do |idx|
    print "#{matrix[row - 1][idx]} "
    i = row - 2
    j = idx + 1
    while is_valid?(i, j, matrix)
      print "#{matrix[i][j]} "
      i -= 1
      j += 1
    end
    print "\n"
  end
end
