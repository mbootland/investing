# frozen_string_literal: true

# S&P 500 Index 10 year data
ten_year_data = [
  28.61, 6.24, 19.42, 9.54, 0.73, 11.39, 29.60, 13.31, 0.01, 12.78
]
ten_year_data_with_dividends = ten_year_data.map{ |x| x = (x += 1.85).round(2) }

puts 'How much is your initial investment in 2010?'
initial_investment = gets.to_i

puts 'How much do you want to invest every year?'
additional_investment = gets.to_i

total_money = initial_investment
10.times do |i|
  money_from_growth = total_money * (ten_year_data_with_dividends[i] / 100)
  total_money += (money_from_growth + additional_investment)
end

puts 'Your bank account in 2020 would be: ' + total_money.to_s
