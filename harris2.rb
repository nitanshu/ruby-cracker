def change_format(paragraph)
  a = paragraph.split('is ')[0]
  data = /\d+-\d+-\d+/.match(paragraph)
  b= data[0].split('-')
  c= b[0]+'/'+b[2]+'/'+b[1]
  a + c
end

puts change_format("Your long-term policy number is 112-39-8552.")