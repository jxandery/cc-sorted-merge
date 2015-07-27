require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './merge'

class MergeTest < MiniTest::Test

  def test_it_exits
    assert Merge
  end

  def test_returns_empty_arrays
    example = Merge.new
    assert_equal [], example.merge_assorted_arrays([], [])
  end

  def test_sorts_one_empty_and_one_single_digit_array
    example = Merge.new
    assert_equal [1], example.merge_assorted_arrays([], [1])
  end

  def test_sorts_one_single_digit_and_one_empty_array
    skip
    example = Merge.new
    assert_equal [1], example.merge_assorted_arrays([1], [])
  end

  def test_sorts_one_single_digit_and_one_empty_array
    skip
    example = Merge.new
    assert_equal [1,2], example.merge_assorted_arrays([1], [2])
  end

end
