require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_its_a_thing
    credit = CreditCheck.new
    assert_instance_of CreditCheck, credit
  end

  def test_it_can_have_a_number
    credit = CreditCheck.new("123456789")
    assert_equal "123456789", credit.num
  end

  def test_it_can_reverse_and_to_i
    credit = CreditCheck.new("123456789")
    assert_equal [9,8,7,6,5,4,3,2,1], credit.reverse_int
  end

  def test_it_can_square_every_other_index
    credit = CreditCheck.new("123456789")
    assert_equal [81,8,49,6,25,4,9,2,1], credit.squares
  end

  def test_it_can_sum_digits_over_ten
    credit = CreditCheck.new("123456789")
    assert_equal 985614622, credit.summer
  end

  def test_it_adds_all_together
    skip
    credit = CreditCheck.new("123456789")
    assert_equal 985614622, credit.sum
  end
end
