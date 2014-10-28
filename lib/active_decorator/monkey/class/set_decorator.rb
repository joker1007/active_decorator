require 'active_support/core_ext/class'

class Class
  def set_decorator(decorator_mod)
    unless defined?(__decorator__)
      class_attribute :__decorator__
    end
    self.__decorator__ = decorator_mod
  end
end
