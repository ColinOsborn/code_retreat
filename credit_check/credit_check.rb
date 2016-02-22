require "pry"

class CreditCheck

  def calc_check_digit(num)
    doubled = double_every_other_digit(num)
  end

  def split_num(num)
    num.to_s.split('').map do |num|
      num.to_i
    end
  end

  def double_every_other_digit(num)
    split_num(num).map.with_index do |num, index|
      index.odd? ? num * 2 : num
    end
  end

end
