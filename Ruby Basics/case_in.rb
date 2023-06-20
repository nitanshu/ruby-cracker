response = { error: 'Bad Gateway', code: 502 }
case response
in { data: data, code: code }
  puts "Success #{data}, Code: #{code}"
in { error: error, code: code }
  puts "Error: #{error}, Code: #{code}"
end

# Error: Bad Gateway, Code: 502