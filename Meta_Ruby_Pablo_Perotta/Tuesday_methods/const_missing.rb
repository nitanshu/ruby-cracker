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
    end
  end
end

module Selection1
  def self.const_missing(const_name)
    return "The missing constant is #{const_name}"
  end
end