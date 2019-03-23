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
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
