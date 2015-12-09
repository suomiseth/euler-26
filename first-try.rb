# A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:

# 1/2 =   0.5
# 1/3 =   0.(3)
# 1/4 =   0.25
# 1/5 =   0.2
# 1/6 =   0.1(6)
# 1/7 =   0.(142857)
# 1/8 =   0.125
# 1/9 =   0.(1)
# 1/10  =   0.1
# Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that 1/7 has a 6-digit recurring cycle.

# Find the value of d < 1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.

class RepeatingDecimal

  def initialize(limit)
    @limit = limit.to_i
  end

  def answer
    find_fractions
  end

  def find_fractions
    (1..@limit).map {|n| 1/n.to_f}
    # i think there is a patten, like only 3, 7 and 9 really need to be tested
    # but i haven't thought of a good system to check for the repeating strings yet
  end

end


puts "input a limit"
limit = gets.strip
puts RepeatingDecimal.new(limit).answer