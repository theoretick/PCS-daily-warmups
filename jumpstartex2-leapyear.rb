# title: Jumpstart Ex2 -- Leapyear checker
# project: PCS Warmups
# author: github.com/theoretick
# date: 5june2013
# description: most warmups via Jumpstart Labs exercises
#  at https://github.com/JumpstartLab/warmup-exercises/
#

require 'minitest/autorun'

class Fixnum

  def leap?(year=self)
    return true if year % 400 == 0
    if year % 4 == 0
      return false unless year % 100 != 0
      return true
    else
      return false
    end
  end
end


##################################################

class Test_LeapYear < MiniTest::Unit::TestCase

  def test_1996_is_leap
    assert_equal true, 1996.leap?
  end

  def test_1997_is_not_leap
    assert_equal false, 1997.leap?
  end

  def test_2000_is_leap
    assert_equal true, 2000.leap?
  end

  def test_1900_is_not_leap
    assert_equal false, 1900.leap?
  end
end
