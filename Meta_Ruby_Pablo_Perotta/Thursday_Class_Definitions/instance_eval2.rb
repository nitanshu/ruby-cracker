s1, s2 = "abc", "def"
s1.instance_eval do
  def swoosh!; reverse; end
end
s1.swoosh!# => "cba"
s2.respond_to?(:swoosh!)# => false

