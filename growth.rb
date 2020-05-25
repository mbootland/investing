# S&P 500 Index

ten_year_data = [28.61, 6.24, 19.42, 9.54, 0.73, 11.39, 29.60, 13.31, 0.01, 12.78]
ten_year_data_with_dividends = ten_year_data.map{ |x| x = (x += 1.85).round(2) }

# initial_investment_with_compound = 100_000
#
# 10.times do |i|
#   addional_money_per_year = initial_investment_with_compound * (ten_year_data_with_dividends[i] / 100)
#   puts "An additional $#{addional_money_per_year.round(0)} per year"
#   initial_investment_with_compound += addional_money_per_year
# end
#
# puts "Initial investment over 10 years with compound growth: $" + initial_investment_with_compound.round.to_s

initial_investment_with_compound_and_20k = 100_000

10.times do |i|
  addional_money_per_year = (initial_investment_with_compound_and_20k * (ten_year_data_with_dividends[i] / 100))
  initial_investment_with_compound_and_20k += addional_money_per_year
  initial_investment_with_compound_and_20k += 20_000
end

puts "Initial investment over 10 years with compound growth and increased investment of 20k per year: $" + initial_investment_with_compound_and_20k.round.to_s

# initial_investment_without_compound = 50_000
#
# 10.times do
#   initial_investment_without_compound += (50_000 * 0.07)
#   initial_investment_without_compound += 20_000
# end
#
# puts "Initial investment over 10 years without compound growth and increases investment of 10k: " + initial_investment_without_compound.to_s
