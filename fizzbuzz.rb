#
#
# 3 fizz
# 5 buzz
# 3 && 5 fizzbuzz

def fizzbuzzA
  1.upto(100) do |x|
    if x % 3 == 0
      print "fizz"
      if x % 5 == 0
        print "buzz"
      end
    elsif x % 5 == 0
      print "buzz"
    else
      print x
    end
    puts
  end
end

def fizzbuzzB

end

require 'benchmark'

puts Benchmark.measure(1000.times{fizzbuzz})