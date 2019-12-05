total_fuel = 0
file = File.read("mass.txt")
mass_modules = file.split(",")

def get_fuel_count(mass)
  return (mass.to_i / 3).round(half: :down).to_i - 2
end

mass_modules.each do |mass|
  total_fuel += get_fuel_count(mass)
end

puts "The answer is #{total_fuel}"
