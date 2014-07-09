def to_roman(n)
  #raise ArgumentError, "Not in 1..4999" unless (1..4999) === n

  roman_map = [
    [1000, 'M'], [900, 'CM'], [500, 'D'],  [400, 'CD'],
    [100, 'C'], [90, 'XC'], [50, 'L'], [40, 'XL'],
    [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'],
    [1, 'I']
  ]

  result = "";
  for value, letters in roman_map
    while value <= n
      result << letters
      n -= value
    end
  end
  result;
end

#if __FILE__ == $0
 # puts "Enter an integer:"
  #begin
   # n = gets.chomp.to_i
    #puts "#{n} is #{to_roman(n)}"
 # rescue ArgumentError, NoMethodError => e
  #  puts e.message
  #end
#end
