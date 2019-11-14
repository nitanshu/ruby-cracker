module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

"my *1st* refinement!".to_alphanumeric #NoMethodError: undefined method `to_alphanumeric' [...]

using StringExtensions
"my *1st* refinement!".to_alphanumeric  # => "my 1st refinement"