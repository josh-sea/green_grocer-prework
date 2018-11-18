require 'pry'
def consolidate_cart(array)
  # code here
  new_hash = {}
  array.each do |i|
    i.each do |item, info|
 #     binding.pry
      if new_hash.has_key?(item)
        new_hash[item][:count] += 1
      else
        new_hash[item] = info
        new_hash[item][:count] = 1
      end
    end
  end
  new_hash
end


def apply_coupons(cart_hash, coupon_array)
  # code here
  coupon_array.each do |coupon|
      item = coupon[:item]
      if cart[item] && cart[item][:count]  >= coupon[:num]
          if cart[item + " W/COUPON"]
            cart[item + " W/COUPON"][:count] += 1
          else
            cart[item + " W/COUPON"] = {:price => coupon[:cost], :count => 1}
            cart[item + " W/COUPON"][:clearance] = cart[item][:clearance]
          end
          cart[item][:count] -= coupon[:num]
      end
    end
    cart
end

# def apply_clearance(cart)
#   # code here
#   cart.each do |grocery, details|
#     details.each do |key, value|
#       if cart[grocery][key] == true
#         new_value = cart[grocery][:price] * 0.8
#         rounded_value = new_value.round(2)
#         cart[grocery][:price] = rounded_value
#       else
#         next
#       end
#     end
#   end
#   cart
# end

# def checkout(cart, coupons)
#   # code here
#   register = apply_clearance(apply_coupons(consolidate_cart(cart), coupons))
#   # cart = cart
#   # cart = cart
#   total = 0
#   register.each do |grocery, details|
#       total += details[:price] * details[:count]
#   end
#   if total > 100
#     total *= 0.9
#   end
#   total.round(2)
# end