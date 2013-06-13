#
#
#

class Grandma

  def random_year
    return rand(30..50)
  end

  def listen
    statement = ''
    until statement == "BYE"
      if statement == statement.upcase
        # shouting works
        puts "NO, NOT SINCE 19#{random_year}!"
      else
        puts 'HUH?! SPEAK UP, SONNY!'
      end
      statement = gets.chomp
    end
  end
end

# mine = Grandma.new
# puts mine.listen