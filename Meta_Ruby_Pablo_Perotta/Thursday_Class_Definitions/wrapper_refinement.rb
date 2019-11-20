module StringRefinement
  refine String do
    def length
      super > 5 ? 'long' : 'short'
    end
  end
end
using StringRefinement
"War and Peace".length  # => "long"