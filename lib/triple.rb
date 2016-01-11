require 'and'

class Triple < And
  attr_accessor :input_a, :input_b, :input_c

  def initialize

  end

  def output
    (input_a + input_b + input_c) / 3
  end
end
