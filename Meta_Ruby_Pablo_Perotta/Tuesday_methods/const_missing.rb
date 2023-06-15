class Module
  def const_missing(const_name)
    case const_name
    when :Task
      Rake.application.const_warning(const_name)
      Rake::Task
    when :FileTask
      Rake.application.const_warning(const_name)
      Rake::FileTask
    when :FileCreationTask
      Rake.application.const_warning(const_name)
      Rake::FileTask
    else
      super
    end
  end
end

module Selection
  def self.const_missing(const_name)
    p const_name
    const_name == :One ? "The missing constant is #{const_name}" : super
  end
end

class ConstTerra
  def self.const_missing(const_name)
    p "Sorry, you don't have #{const_name} constant"
  end
end
