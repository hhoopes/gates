require 'and'

class Double < And
  attr_accessor :input_a, :input_b

  def initialize

  end

  def output
    (input_a + input_b) / 2
  end
end
