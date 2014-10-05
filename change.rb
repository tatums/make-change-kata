class Change
  COINS = [25, 10, 5, 1]

  def self.from(amount, options={})
    obj = COINS.map do |item|
      qty = amount / item
      amount -= (item * qty)
      {coin: item, qty: qty}
    end
    return_value(obj, options)
  end

  private

  def self.return_value(obj, options)
    if options[:return_coins]
      obj.map do |hash|
        hash[:qty].times.map { hash[:coin] }
      end.flatten
    else
      obj
    end
  end
end
