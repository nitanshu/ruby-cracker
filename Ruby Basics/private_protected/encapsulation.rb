class Test

private
    def test_priavte
    "privaet"
    end

protected
    def test_protected 
     "protected"
    end

public 
    def calling_protected
    self.test_protected
    end
    
    def calling_private
    self.test_priavte
    end

    def public_method
        "this is pure public method"
    end

    def another_pub
        "this is public method using " + test_priavte 
    end
    def protected_denies
        "using " + test_protected 
    end
end

