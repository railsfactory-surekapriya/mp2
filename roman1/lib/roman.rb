class Roman

def self.convert(number)
s =""
if(number<=10 or number == 100 or number == 1000)
s=comp(number)
return s

elsif (number>10 and number<100)
m=number%10
s1 = comp(m)
number=number-m
s2 = comp(number)
s = s2 + s1
return s

elsif (number>100 and number<1000)
a=number%10
s1 = comp(a)
number= number-a
b = number%100
number = number-b
s2 = comp(b)
s3 = comp(number)
s = s3 + s2 + s1
return s
end
end

def self.comp(n)
if n==0
""
elsif n == 1
"I"
elsif n == 2
"II"
elsif n == 3
"III"
elsif n == 4
"IV"
elsif n ==5
"V"
elsif n == 6
"VI"
elsif n == 7
"VII"
elsif n ==8
"VIII"
elsif n == 9
"IX"
elsif n == 10
"X"
elsif n == 20
"XX"
elsif n == 30
"XXX"
elsif n == 40
"XXXX"
elsif n ==50
"L"
elsif n == 60
"LX"
elsif n == 70
"LXX"
elsif n ==80
"LXXX"
elsif n == 90
"LXXXX"
elsif n == 100
"C"
elsif n == 200
"CC"
elsif n == 300
"CCC"
elsif n == 400
"CD"
elsif n ==500
"D"
elsif n == 600
"DC"
elsif n == 700
"DCC"
elsif n ==800
"DCCC"
elsif n == 900
"CM"
elsif n ==1000
"M"
end
end
end


