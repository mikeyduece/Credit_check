require './lib/credit_check_validate'

puts "Enter credit card number to validate: "
print "> "
cc_num = gets.chomp
new_num = CreditCheck.new(cc_num)
puts new_num.validate
