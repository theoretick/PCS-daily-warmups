# title: Jumpstart Ex1 -- 99 Bottles
# project: PCS Warmups
# author: github.com/theoretick
# date: 4june2013
# description: most warmups via Jumpstart Labs exercises
#  at https://github.com/JumpstartLab/warmup-exercises/
#

class Beer

  def self.song
    count = 100
    line3 = "Go to the store and buy some more, 99 bottles of beer on the wall."

    while (count > 0) do
      count -= 1
      line1 = "#{count} bottles of beer on the wall, #{count} bottles of beer."
      line2 = "Take one down and pass it around, #{count-1} bottles of beer on the wall."

      puts
      puts line1
      puts line2

    end

    count = "no more"
    puts line1
    puts line3
  end
end

Beer.song
