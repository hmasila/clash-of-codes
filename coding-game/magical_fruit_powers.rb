# *********
# in a world where people get powers by eating magical fruits you will be given nfruits types.
#   there are 3 types of fruits:
#   logia
#   paramecia
#   zoan
#   a logia fruit is valued for 100 beli
#   a paramecia is valued for 75 beli
#   a zoan is only valued for 25 beli
#   output the sum of all the fruits value in beli

value = 0
n = gets.to_i
n.times do
  fruit = gets.chomp

  case fruit.downcase
  when "logia"
    value += 100
  when "paramecia"
    value += 75
  when "zoan"
    value += 25
  else
    puts "Invalid fruit type: #{fruit}"
  end
end

puts "#{value} beli"
