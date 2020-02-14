# This returns true if none of the strings match the condition, or false if one or more match it.
strings= ['nitanshu', 'verma']
strings.none? { |str| str.size == 5 }

# You can check if EXACTLY one element returns true with the one? method.
["a", 1, {}].one? { |obj| obj.kind_of?(Hash) } # true
["a", 1, {}, {a: 1}].one? { |obj| obj.kind_of?(Hash) } # false
