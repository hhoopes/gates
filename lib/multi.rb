require 'and'
require 'pry'

class Multi < And
  attr_accessor :inputs
  attr_reader :number_inputs

  def initialize(number_inputs)
    @inputs = []
    @number_inputs = number_inputs

  end

  def add_inputs
    number_inputs.times do
      binding.pry
      inputs << Input.new
    end

  end

  def output
    gate.add_inputs
    (input_a  + input_b + input_c) / 3
  end
end

class Input
  attr_accessor :value
  def initialize


  end

end
