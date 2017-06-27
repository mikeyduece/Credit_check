require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_its_a_thing
    credit = CreditCheck.new
    assert_instance_of CreditCheck, credit
  end

  def test_it_can_have_a_number
    credit = CreditCheck.new("4929735477250543")
    assert_equal "4929735477250543", credit.num
  end

  def test_it_can_reverse_and_to_i
    credit = CreditCheck.new("4929735477250543")
    expected = [3, 4, 5, 0, 5, 2, 7, 7, 4, 5, 3, 7, 9, 2, 9, 4]
    assert_equal expected, credit.reverse_int
  end

  def test_it_can_square_every_other_index
    credit = CreditCheck.new("4929735477250543")
    expected = [9, 4, 25, 0, 25, 2, 49, 7, 16, 5, 9, 7, 81, 2, 81, 4]
    assert_equal expected, credit.squares
  end

  def test_it_can_sum_digits_over_ten
    credit = CreditCheck.new("4929735477250543")
    assert_equal 101, credit.summer
  end

  def test_it_can_validate
    credit = CreditCheck.new("4929735477250543")
    assert_equal "Invalid!", credit.validate
  end
end
