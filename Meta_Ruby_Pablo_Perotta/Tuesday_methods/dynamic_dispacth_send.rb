require "pry"
def refresh(options={})
  defaults = {}
  attributes = [ :input, :output, :commands, :print, :quiet,
                 :exception_handler, :hooks, :custom_completions,
                 :prompt, :memory_size, :extra_sticky_locals ]
  attributes.each do |attribute|
    defaults[attribute] = Pry.send attribute
  end

  defaults.merge!(options).each do |key, value|
    send("#{key}=", value) if respond_to?("#{key}=")
  end
  true
end

class Dread
attributes = [ :input, :output, :commands, :print, :quiet,
               :exception_handler, :hooks, :custom_completions,
               :prompt, :memory_size, :extra_sticky_locals ]
  attributes.each do |attr|
    p attr.send(:to_s)
  end
end