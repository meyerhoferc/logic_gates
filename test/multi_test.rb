require 'minitest/autorun'
require 'minitest/pride'
require './lib/multi.rb'

class MultiTest < Minitest::Test
  attr_reader :multi_1,
              :multi_2
  def setup
    @multi_1 = And::Multi.new(5)
    @multi_2 = And::Multi.new(2)
  end

  def test_gate_exists
    assert multi_1
    assert multi_2
  end

  def test_has_variable_input_matched_with_argument
    assert_equal 5, multi_1.inputs.count
    assert_equal 2, multi_2.inputs.count
  end

  def test_inputs_initially_zero
    skip
    assert multi_1.inputs.all? { |input| input == 0 }
    assert multi_2.inputs.all? { |input| input == 0 }
  end

  def test_can_reset_inputs
    skip
    assert multi_1.input_a = 1
    assert multi_1.input_b = 1
    assert multi_1.input_c = 1
    assert multi_1.input_d = 1
    assert multi_1.input_e = 1
    assert multi_1.inputs.all? { |input| input == 1 }
  end

  def test_AND_module_has_output
    skip
    assert_equal 0, multi_1.output
    assert multi_1.input_a = 1
    assert_equal 0, multi_1.output
    assert multi_1.input_b = 1
    assert_equal 0, multi_1.output
    assert multi_1.input_c = 1
    assert_equal 0, multi_1.output
    assert multi_1.input_d = 1
    assert_equal 0, multi_1.output
    assert multi_1.input_e = 1
    assert_equal 1, multi_1.output
  end
end
