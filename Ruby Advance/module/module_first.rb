module First
  def first_m
    puts 'method in module first and method first_m'
  end

  def second_m
    puts 'method in module first and method second_m'
  end
end

class ModuleTest
  include First

  def c_method
    puts 'method is in module test and method c_method'
  end

  def t_m_method
    first_m
    second_m
    puts '=========test_module_method'
  end
end

c = ModuleTest.new
p c.t_m_method
