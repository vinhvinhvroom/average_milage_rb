shuvver_ship = [260, 483, 792, 357, 546]
zhook_cruiser = [186, 223, 173, 297, 303]
nanoship = [646, 883, 761, 932, 778]

def average(mileage)
  sum = 0
  mileage.each {|a| sum += a}
  average = (sum.to_f / mileage.length.to_f)
  return average
end

shuvver_average = average(shuvver_ship)
zhook_average = average(zhook_cruiser)
nanoship_average = average(nanoship)

puts shuvver_average
puts zhook_average
puts nanoship_average
puts "\n"
def mileage_rating(average)
  if average >= 1000.0
    puts "A mileage rating!"
  elsif 750.0 <= average
    puts "B mileage rating!"
  elsif 500.0 <= average
    puts "C mileage rating!"
  elsif 250.0 <= average
    puts "D mileage rating!"
  else
    puts "F - Use this ship as a last resort! We aren't made of money."
  end
end

mileage_rating(shuvver_average)
mileage_rating(zhook_average)
mileage_rating(nanoship_average)
puts "\n"

def ranking (ships)
  ships.each_with_index do |ship, index|
    puts "#{index + 1}) #{ship}"
  end
end

ships_rank = ["Nanoship", "Shuvver", "Snacky Cabs", "Resisty's Ship", "Zhook Cruiser"]

ranking(ships_rank)
