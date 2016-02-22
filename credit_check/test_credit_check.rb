require 'minitest/autorun'
require 'minitest/pride'
require_relative 'credit_check'
require 'pry'

class CreditCheckTest < Minitest::Test

  def setup
    @check = CreditCheck.new
  end

  def test_can_calc_check_digit
    submitted = @check.calc_check_digit(7992739871)
    expected = 79927398713

    assert_equal expected, submitted
  end

end
