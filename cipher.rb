s= gets.chomp
position_to_move =gets.to_i
c= s.bytes
a=[]
c.each do |byte|
  bits_to_move = byte+position_to_move
  if (48..57).include?(byte)
    a << (bits_to_move > 57 ? (47 + bits_to_move-57).chr : bits_to_move.chr)
  elsif (65..90).include?(byte)
    a << (bits_to_move > 90 ? (64 + bits_to_move -90).chr : bits_to_move.chr)
  elsif (97..122).include?(byte)
    a << (bits_to_move > 122 ? (96 + bits_to_move- 122).chr : bits_to_move.chr)
  else
    a << byte.chr
  end
end
puts a.join('')
