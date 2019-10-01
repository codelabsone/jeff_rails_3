def post
  @total_loan = @loan_amount - @trade_in
end



=begin
puts "Enter the loan amount:"
sale_price = gets.chomp
sale_price = sale_price.to_f

trade_in = gets.chomp

if trade_in.capitalize == "Y"
  puts "Enter the trade in value:"
  trade_value = gets.chomp
  final_price = sale_price - trade_value.to_f
  puts "\nWhat is the Year of the trade-in?"
  trade_year = gets.chomp
  trade_year = trade_year.to_i
    if trade_year > 2015
      trade_value = 5000
    elsif trade_year > 1990
      trade_value = 2500
    else
      trade_value = 100
    end

  puts "\nWhat is the Make of the trade-in?"
  trade_make = gets.chomp
    case trade_make.downcase
    when "chevy"
      puts "Chevys are great cars. They have a high value.\nYour trade-in is worth $#{format('%.2f',trade_value += 1000)}. Your total cost is $#{format('%.2f',sale_price - trade_value)}."
    when "ford"
      puts "Fords are worthless. They have a low value.\nYour trade-in is worth $#{format('%.2f', trade_value -= 1000)}. Your total cost is $#{format('%.2f',sale_price - trade_value)}."
    else
      puts "Your trade-in has a normal value. Your trade-in is worth $#{format('%.2f',trade_value)}. Your total cost is $#{format('%.2f',sale_price - trade_value)}."
    end

  final_price = sale_price - trade_value
else
  final_price = sale_price
end

format('%.2f', final_price)
monthly_payment = (((int_rate / 12) * final_price) / (1 - (1 + (int_rate / 12))**(-months)))
puts "Total payments will be #{monthly_payment.round(2)} per month for #{months} months."

# Works down to this point. Rest is in progress.
puts "Total payments will be $#{monthly_payment.round(2)} per month for #{months} months."

puts "\nWould you like a complete amortization table? (Y or N)"
amort_table = gets.chomp


if amort_table.capitalize == "Y"
  puts "\n**********************************************************************************************"
  puts "Amortization for a $#{final_price} loan over #{months} months with an APR of #{int_rate*100}%"
  puts "Amortization for a #{format('$%.2f',final_price)} loan over #{months} months with an APR of #{int_rate*100}%"
  puts "\nPayment Number - Principal Payment - Interest Payment - Loan Balance"
  balance = final_price
  1.upto(months) do |m|
    int_payment = balance * (int_rate/12)
    princ_payment = monthly_payment - int_payment
    balance -= princ_payment
    puts "#{m.to_s.center(14)} #{format('$%.2f', princ_payment).center(20)} #{format('$%.2f', int_payment).center(20)} #{format('$%.2f', balance.abs).center(20)}"
    puts "#{m.to_s.center(14)} #{format('$%.2f', princ_payment).center(20)} #{format('$%.2f', int_payment).center(20)} #{format('$%.2f', balance.abs).center(10)}"
  end
    puts "**********************************************************************************************"
end
#format("$%.2f",3.3)
=end
