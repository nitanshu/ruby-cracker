def just_yield
  yield
end
top_level_variable = 1
just_yield do
  top_level_variable += 1
  local_to_block = 1
end # => 2
local_to_block # => Error!
