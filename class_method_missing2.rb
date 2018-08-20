class LoudSpeaker
  def self.method_missing(message, *args, &block)
    if [:exclaim, :yodel, :howl, :sob, :beg].include?(message)
      puts args.first
    else
      # we don't want to handle this missing method, we want Ruby to raise the
      # NoMethodError it ought to
      puts "This is handling"
    end
  end
end
