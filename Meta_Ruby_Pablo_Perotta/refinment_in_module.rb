module StringExtensions
  refine String do
    def reverse
      "esrever"
    end
  end
end
module StringStuff
  using StringExtensions
  "my_string".reverse
# => "esrever"
end
"my_string".reverse
# => "gnirts_ym"