require 'minitest/autorun'
require 'minitest/pride'
require './lib/double.rb'

class DoubleTest < Minitest::Test
  attr_reader :double
  def setup
    @double = And::Double.new
  end

  def test_gate_exists
    assert double
  end

  def test_has_one_input
    assert double.input_a
  end

  def test_has_two_inputs
    assert double.input_a
    assert double.input_b
  end

  def test_inputs_initially_zero
    assert_equal 0, double.input_a
    assert_equal 0, double.input_b
  end

  def test_can_reset_inputs
    assert double.input_a = 1
    assert double.input_b = 1
    assert_equal 1, double.input_a
    assert_equal 1, double.input_b
  end

  def test_AND_module_has_output
    assert double.output
    assert_equal 0, double.output
    assert double.input_a = 1
    assert_equal 0, double.output
    assert double.input_b = 1
    assert_equal 1, double.output
  end
end
