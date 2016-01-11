require 'minitest'
require './lib/and.rb'
require './lib/double.rb'
require './lib/triple.rb'
require './lib/multi.rb'

class AndTest < Minitest::Test

  def test_double_gate_instantiates
    gate1 = And::Double.new
    assert_equal And::Double, gate1.class
  end

  def test_two_inputs_and_gate_both_on_is_true
    gate = And::Double.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 1, gate.output
  end

  def test_two_inputs_and_gate_one_on_is_false
    gate = And::Double.new
    gate.input_a = 1
    gate.input_b = 0
    assert_equal 0, gate.output
  end

  def test_two_inputs_and_gate_both_off_is_false
    gate = And::Double.new
    gate.input_a = 0
    gate.input_b = 0
    assert_equal 0, gate.output
  end

  def test_three_inputs_and_gate_all_on_is_true
    gate = And::Triple.new
    gate.input_a = 1
    gate.input_b = 1
    gate.input_c = 1
    assert_equal 1, gate.output
  end

  def test_three_inputs_and_two_gates_on_and_on_is_false
    gate = And::Triple.new
    gate.input_a = 1
    gate.input_b = 0
    gate.input_c = 1
    assert_equal 0, gate.output
  end

  def test_three_inputs_and_one_gate_on_and_twoare_false
    gate = And::Triple.new
    gate.input_a = 0
    gate.input_b = 0
    gate.input_c = 1
    assert_equal 0, gate.output
  end

  def test_three_inputs_and_all_gates_arefalse
    gate = And::Triple.new
    gate.input_a = 0
    gate.input_b = 0
    gate.input_c = 0
    assert_equal 0, gate.output
  end

  def test_multi_gate_instantiates
    gate = And::Multi.new(1)
    assert gate.instance_of?(And::Multi)
  end

  def test_multi_gate_instantiates_with_five_inputs
    gate = And::Multi.new(5)
    
    assert_equal 5, gate.inputs.size
  end

end
