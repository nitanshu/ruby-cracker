require 'ripper'
require 'pp'
code = <<STR
puts 1 + 10
STR
puts code
pp Ripper.lex(code)