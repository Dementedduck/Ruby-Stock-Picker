

prices = [44, 32, 3, 2, 14, 5, 100, 4]

def stock_picker(prices) 
  days = [*0..prices.length - 1]
  stock_hash = {}
  result = []
  days.each_with_index { |key, index| stock_hash[key] = prices[index] }

  combos = stock_hash.to_a.combination(2)

  best_days = combos.to_a.max_by { |sell_day, buy_day| buy_day[1] - sell_day[1] }

  result.push("Buy day = #{best_days[0][0]}", "Sell day = #{best_days[1][0]}")

  puts result.join('  ')
end

stock_picker(prices)
