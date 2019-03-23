def consolidate_cart(cart)
  result_hash ={}
  cart.each do |food|
    food.each do |food, data|
      if result_hash.has_key?(food) == false
        result_hash[food] = data
        result_hash[food][:count] = 1
      else result_hash[food][:count] += 1
      end
    end
  end
  result_hash
  # code here
end

def apply_coupons(cart, coupons)
  result_hash = cart
  cart.each do |food, data|
    if food == coupons(:item) && data[:count] % 2 == 1
      result_hash = cart[food][:count] = 1
      result_hash["#{food} W/COUPON"] = {:price => 5*(data[:count]-1)/2.round(1), :clearance => true, :count => (data[:count]-1)/2}
    elsif food == coupons(:item) && data[:count] % 2 == 0
      result_hash = cart[food][:count] = 0
      result_hash["#{food} W/COUPON"] = {:price => 5*data[:count]/2.round(1), :clearance => true, :count => data[:count]/2}
    else
      result_hash = cart
    end
  end
  result_hash
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
