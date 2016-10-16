require "pry-byebug"

class RepeatingDecimal

  def initialize(limit)
    @limit = limit.to_i
  end

  def answer
    (1..@limit).inject({}) { |ans, d| ans[repeaters(d)] = d if is_prime?(d); ans }.max[1]
  end 

  def repeaters (d)
    (1..@limit).each { |n| return n if (((10 ** n) - 1) % d == 0) }
     1
  end

  def is_prime? (n)
    return false if n < 2
    (2..(Math.sqrt(n).floor)).each { |x| return false if n % x == 0 }
    true
  end
end


puts "input a limit"
limit = gets.strip
puts "#{RepeatingDecimal.new(limit).answer}"
