# title: Jumpstart Ex3 -- scrabblescore
# project: PCS Warmups
# author: github.com/theoretick
# date: 6june2013
# description: most warmups via Jumpstart Labs exercises
#  at https://github.com/JumpstartLab/warmup-exercises/
#
# TODO:
# * refactor as instance calls, class Scrabble doesn't make sense to me
# * fix failing test: handling of nonalpha chars (also, no numbers)
# * add double-word and triple-word scores
################################################################

require 'minitest/autorun'

class Scrabble

  @letter_values =
    {1 =>/[aeioulnrst]{1}/i,
     2 => /[dg]{1}/i,
     3 => /[bcmp]{1}/i,
     4 => /[fhvwy]{1}/i,
     5 => /[k]{1}/i,
     8 => /[jx]{1}/i,
     10 => /[qz]{1}/i }

  def self.score(word,bonus=false)
    total = 0
    word.downcase.split('').each do |character|
      total += letter(character)
    end
    return total
  end

  def self.letter(inchar)
    @letter_values.each_pair do |key,val|
      if inchar =~ val
        return key
      end
    end
    return 0 #if invalid chars, award no points
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
    assert_equal 23, Scrabble.score('tricksysacul')
  end

  def test_non_letters_are_0_points
    assert_equal 4, Scrabble.score('@ab&1')
  end

  def test_empty_strings_are_0_points
    assert_equal 0, Scrabble.score('')
  end

  def test_double_word_score_for_ruby
    assert_equal 18, Scrabble.score('ruby','double')
  end

  def test_triple_word_score_for_ruby
    assert_equal 27, Scrabble.score('ruby','triple')
  end
end
