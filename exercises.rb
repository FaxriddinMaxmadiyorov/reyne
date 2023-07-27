# 1
def print_three_and_five_multiples
  for i in 1..100 do
    if i % 3 == 0
      puts 'Hi'
    elsif i % 5 == 0
      puts 'By'
    elsif i % 15 == 0
      puts 'HiBy'
    else
      puts i
    end
  end
end

# 2
def reverse_register(string)
  string.chars.map { |ch|
    if ch.ord >= 65 && ch.ord <= 90
      ch.downcase
    else
      ch.upcase
    end
  }.join
end

# 3
def segment_word(string, dict)
  n = string.length
  dp = Array.new(n + 1, false)
  dp[0] = true
  (1..n).each do |i|
    (0..i-1).each do |j|
      if dp[j] && dict.include?(string[j...i])
        dp[i] = true
        break
      end
    end
  end
  dp[n]
end

# 4
def max_sum_sub_array(array)
  max_so_far = -99999999
  temp = 0

  array.each_with_index do |ele, i|
    temp = temp + ele
    max_so_far = temp if temp > max_so_far
    temp = 0 if temp < 0
  end

  max_so_far
end

#5
def find_minimum_sum_triangle(triangle)
  sum = 0
  dp = triangle.last.dup

  (triangle.size - 2).downto(0) do |i|
    triangle[i].each_with_index do |num, j|
      dp[j] = num + [dp[j], dp[j + 1]].min
    end
  end

  dp.first
end
