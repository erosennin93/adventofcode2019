# frozen_string_literal: true

require 'byebug'
file = File.read('program.txt')
numbers = file.split(',')
program = numbers.map(&:to_i)
program[1] = 12
program[2] = 2
index = 0

def has_to_continue_program(value)
  value != 99
end

def adding(value1, value2)
  value1 + value2
end

def multiplier(value1, value2)
  value1 * value2
end

def calculate(indicator, value1, value2)
  indicator == 1 ? adding(value1, value2) : multiplier(value1, value2)
end

while has_to_continue_program(program[index])
  value1 = program[program[index + 1]]
  value2 = program[program[index + 2]]
  value3 = program[program[index + 3]]
  program[value3] = calculate(program[index], value1, value2)
  index += 4
end

puts "Result: #{program[1]}"
