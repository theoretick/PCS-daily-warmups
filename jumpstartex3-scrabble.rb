# title: Jumpstart Ex3 -- scrabblescore
# project: PCS Warmups
# author: github.com/theoretick
# date: 6june2013
# description: most warmups via Jumpstart Labs exercises
#  at https://github.com/JumpstartLab/warmup-exercises/
#


class Scrabble

  def self.score(word)
    total = 0
    word.downcase.split('').each do |character|
      letter(character)
    end
    return total
  end

  def self.letter(inletter)
    # val = {1:,2:,3:,4:,5:,8:,10:}
    val1 = /[aeioulnrst]{1}/i
    if inletter =~ val1
      return 1
    else
      return 0
    # # val2 = /[dg]{1}/i
    # val3 = /[bcmp]{1}/i
    # val4 = /[fhvwy]{1}/i
    # val5 = /[k]{1}/i
    # val8 = /[jx]{1}/i
    # val10 = /[qz]{1}/i
    end
  end
end

puts Scrabble.score('hello')