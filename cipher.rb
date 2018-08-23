s= gets
s= s.chomp
position_to_move =gets
position_to_move= position_to_move.to_i
c= s.chars
c.each{|text| text.replace(move(text, position_to_move))}


def move(text, position_to_move)
  cipher_capital_text_range = ('A'..'Z').to_a
  cipher_small_text_range = ('a'..'z').to_a
  cipher_number_range = (0..9)
  case text
    when cipher_capital_text_range.include?(text)
      index = cipher_capital_text_range.index(text) + position_to_move
      cipher_capital_text_range.at(index)
    when cipher_small_text_range.include?(text)
      index = cipher_small_text_range.index(text) + position_to_move
      cipher_small_text_range.at(index)
    when cipher_number_range.include?(text)
      index = cipher_number_range.index(text) + position_to_move
      cipher_number_range.at(index)
    else
      text
  end

end