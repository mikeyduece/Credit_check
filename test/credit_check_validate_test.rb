require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_validate'

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
    credit = CreditCheck.new("6011797668867828")
    expected = [8, 2, 8, 7, 6, 8, 8, 6, 6, 7, 9, 7, 1, 1, 0, 6]
    assert_equal expected, credit.reverse_int
  end

  def test_it_can_square_every_other_index
    credit = CreditCheck.new("6011797668867828")
    expected = [8, 4, 8, 14, 6, 16, 8, 12, 6, 14, 9, 14, 1, 2, 0, 12]
    assert_equal expected, credit.squares
  end

  def test_it_can_sum_digits_over_ten
    credit = CreditCheck.new("6011797668867828")
    assert_equal 80, credit.summer
  end

  def test_it_can_validate
    credit = CreditCheck.new("6011797668868728")
    assert_equal "Invalid!", credit.validate
    credit = CreditCheck.new("6011797668867828")
    assert_equal "Valid!", credit.validate
  end

  def test_it_can_do_amex
    credit = CreditCheck.new("342804633855673")
    assert_equal "Valid!", credit.validate
    credit = CreditCheck.new("342801633855673")
    assert_equal "Invalid!", credit.validate
  end
end
