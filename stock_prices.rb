def get_max_profit(stock_prices_yesterday)
  buying_price = 0
  buying_index = 0
  selling_price = 0
  selling_index = 0

  stock_prices_yesterday.each_with_index |price, idx|
    if price > selling_price && idx != 0
      selling_price = price
      selling_index = idx
    end
  end

  stock_prices_yesterday.each_with_index |price, idx|
    if price < buying_price && idx < selling_index
      buying_price = price
      buying_index = idx
    end
  end

  return selling_price - buying_price
end
