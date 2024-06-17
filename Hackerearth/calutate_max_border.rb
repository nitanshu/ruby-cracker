def calculate_max_border(matrix)
  rows = matrix.length
  cols = matrix[0].length

  max_row_border = Array.new(rows, 0)
  max_col_border = Array.new(cols, 0)

  (0...rows).each do |i|
    count = 0
    (0...cols).each do |j|
      if matrix[i][j] == 1
        count += 1
        max_row_border[i] = [max_row_border[i], count].max
      else
        count = 0
      end
    end
  end

  (0...cols).each do |j|
    count = 0
    (0...rows).each do |i|
      if matrix[i][j] == 1
        count += 1
        max_col_border[j] = [max_col_border[j], count].max
      else
        count = 0
      end
    end
  end

  max_row_border.concat(max_col_border).max
end

# Reading the input
t = gets.to_i # number of test cases

t.times do
  n, m = gets.split.map(&:to_i) # number of rows and columns
  matrix = []
  n.times do
    row = gets.chomp.chars.map { |c| c == '#' ? 1 : 0 }
    matrix << row
  end

  result = calculate_max_border(matrix)
  puts result
end
