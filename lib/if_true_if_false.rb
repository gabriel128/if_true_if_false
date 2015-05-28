require "if_true_if_false/version"

class Object
  def if_true
    yield
  end

  def if_false
    self
  end
end

class NilClass
  def if_true
    self
  end

  def if_false
    yield
  end
end

class FalseClass
  def if_true
    self
  end

  def if_false
    yield
  end
end
