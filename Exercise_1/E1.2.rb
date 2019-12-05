total_fuel = 0
file = File.read("mass.txt")
mass_modules = file.split(",")

def get_fuel_count(mass)
  count = (mass.to_i / 3).round(half: :down).to_i - 2
  return count > 0 ? count : 0
end

def has_fuel(value)
  return value > 0 ? true : false
end

mass_modules.each do |mass|
  fuel = 0
  value = get_fuel_count(mass)
  while has_fuel(value)
    fuel += value
    value = get_fuel_count(value)
  end
  total_fuel += fuel
end

puts "The answer is #{total_fuel}"