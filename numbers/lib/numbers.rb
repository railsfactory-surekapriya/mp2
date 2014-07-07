class Numbers

  def self.convert(number)
number = number.to_i
 #if number == 1 
  #  '1st'
  #elsif
    # number == 2
    # '2nd'
 
 # elsif 
   # number == 3
   #  '3rd'
 # elsif 
   # number == 4
   # '4th'
if (10...20) == number
s = "#{number}th"
return s
elsif
g = %w{ th st nd rd th th th th th th }
a = number.to_s
c=a[-1..-1].to_i
s = a + g[c]
return s
end
end
end










   # if number == 1 
   # '1st'
  #elsif
   #  number == 2
    # '2nd'
 
#  elsif 
 #    number == 3
  #   '3rd'
 # elsif 
  #   number == 4
   #  '4th'

   #end
#end
#end
#def number_to_ordinal(num)

  
  
