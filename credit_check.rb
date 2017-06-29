require './lib/credit_check_validate'

# puts "Enter credit card number to validate: "
# print "> "
# cc_num = gets.chomp
# new_num = CreditCheck.new(cc_num)
# puts new_num.validate
filename = "./card_numbers.txt"
File.foreach filename do |number|
  card = CreditCheck.new(number.chomp)
  puts "The number #{number.chomp} is #{card.validate}"
end
