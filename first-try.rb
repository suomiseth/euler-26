require "pry-byebug"

class RepeatingDecimal

  def initialize(limit)
    @limit = limit.to_i
  end

  def answer
    ans = Hash.new
    (1..@limit).each do  |d|
      if is_prime?(d)
        ans[repeaters(d)] = d
      end
    end
    ans.max[1]
  end 


  def repeaters (d)
    (1..1000).each do  |n|  
      if (((10 ** n) - 1) % d == 0)
        return n
      end
    end
    return 1
  end

  def is_prime? (n)
    return false if n < 2
    (2..(Math.sqrt(n).floor)).each do |x|
      return false if n % x == 0
    end
    true
  end
end


puts "input a limit"
limit = gets.strip
puts "#{RepeatingDecimal.new(limit).answer}"
