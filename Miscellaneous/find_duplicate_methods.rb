def find_duplicate_methods(repository=nil)
  methods = []
  repository.each do |file|
    if file.end_with?('.rb')
      File.open(file) do |f|
        f.each_line do |line|
          if line.match?(/^\s*def\s+(\w+)/)
            method_name = line.match(/^\s*def\s+(\w+)/)[1]
            methods << method_name
          end
        end
      end
    end
  end
  methods.group_by(&:itself).select { |k, v| v.size > 1 }.keys
end

repository = ['file1.rb', 'file2.rb', 'file3.rb']
duplicate_methods = find_duplicate_methods(repository)
puts duplicate_methods
# Output: ['method1', 'method2', 'method3']