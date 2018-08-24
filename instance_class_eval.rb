class InstanceClassEval
  self.instance_eval do
    def instance_test
      p 'instance_test'
    end
  end
  self.class_eval do
    def class_test
      p 'class test'
    end
  end
end
InstanceClassEval.instance_test
InstanceClassEval.new.class_test