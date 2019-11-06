t=gets.chomp.to_i
m_heights   = []
n_heights = []
t.times do |d|
  m,n =gets.chomp.split.map &:to_i
  m_heights= gets.chomp.split.map &:to_i
  n_heights= gets.chomp.split.map &:to_i
  pair ={}
  if n_heights.length< m_heights.length
    puts 'NO'
  else
    m_heights.each_with_index do |b_h,i|
      n_heights.each_with_index do |g_h, e|
        if m_heights[i] > n_heights[e]
          pair.merge!("#{b_h}": g_h)
          n_heights.delete(g_h)
          break
        end
      end
    end
  end
  if pair.keys.size == m_heights.size
    puts 'YES'
  else
    puts 'NO'
  end
end
