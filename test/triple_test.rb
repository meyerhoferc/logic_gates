require 'minitest/autorun'
require 'minitest/pride'
require './lib/triple.rb'

class TripleTest < Minitest::Test
  attr_reader :triple
  def setup
    @triple = And::Triple.new
  end

  def test_gate_exists
    assert triple
  end

  def test_has_one_input
    assert triple.input_a
  end

  def test_has_three_inputs
    assert triple.input_a
    assert triple.input_b
    assert triple.input_c
  end

  def test_inputs_initially_zero
    assert_equal 0, triple.input_a
    assert_equal 0, triple.input_b
    assert_equal 0, triple.input_c
  end

  def test_can_reset_inputs
    assert triple.input_a = 1
    assert triple.input_b = 1
    assert triple.input_c = 1
    assert_equal 1, triple.input_a
    assert_equal 1, triple.input_b
    assert_equal 1, triple.input_c
  end

  def test_AND_module_has_output
    assert triple.output
    assert_equal 0, triple.output
    assert triple.input_a = 1
    assert_equal 0, triple.output
    assert triple.input_b = 1
    assert_equal 0, triple.output
    assert triple.input_c = 1
    assert_equal 1, triple.output
  end
end
