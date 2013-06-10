# title: Jumpstart Ex3 -- scrabblescore
# project: PCS Warmups
# author: github.com/theoretick
# date: 6june2013
# description: most warmups via Jumpstart Labs exercises
#  at https://github.com/JumpstartLab/warmup-exercises/
#

require 'minitest/autorun'

class Scrabble

  def self.score(word)
    total = 0
    word.downcase.split('').each do |character|
      total += letter(character)
      puts total
    end
    return total
  end

  def self.letter(inletter)

    point_store = {1 =>/[aeioulnrst]{1}/i, 2 => /[dg]{1}/i,
      3 => /[bcmp]{1}/i, 4 => /[fhvwy]{1}/i, 5 => /[k]{1}/i,
      8 => /[jx]{1}/i, 10 => /[qz]{1}/i}

    point_store.each_pair do |key,val|
      if inletter =~ val
        return key
      else
        return 0
      end
    end
  end
end

##################################################
# TESTS
##################################################

class TestScrabble < MiniTest::Test
  def test_hello_is_8_points
    assert_equal 8, Scrabble.score('hello')
  end
  def test_tricksysacul_is_22_points
    assert_equal 22, Scrabble.score('tricksysacul')
  end
  def test_non_alphanumerics_are_0_points
    assert_equal 4, Scrabble.score('&ba')
  end
end
