class NestedMethods
  def parent_method
    puts 'i am in parent_ method'
    def child_1
      puts ' I am child 1'
    end

    def child_2
      puts 'i am child 2'
    end

    def child_3
      puts ' I am child 3'
      def child_of_child_3
        puts 'i am child of child 3'
      end
    end
  end
end
NestedMethods.new.parent_method