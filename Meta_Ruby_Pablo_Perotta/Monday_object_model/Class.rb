"Hello".class # => String
String.class # => Class
Class.class # => Class

# The "false" argument here means: ignore inherited methods
Class.instance_methods(false)  # => [:allocate, :new, :superclass]
Class.superclass  # => Module