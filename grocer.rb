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
 new_hash = {}
  coupon_array.each do |i|
      i.each do |ckeys, cvalues|
        cart_hash.each do |item, item_info|
          if cvalues == item && i[:num] <= consolidated_hash[item][:count]
            name_with_discount = item + " W/COUPON"
            coupon_hash[name_with_discount] = {:price =>element[:cost], :clearance => consolidated_hash[item][:clearance], :count => (consolidated_hash[item][:count]/ element[:num]) }
            cart_hash[item][:count] =  (cart_hash[item][:count] % i[:num])
            end
         end
       end
 end
  consolidated_hash.merge!(coupon_hash)
  
# def apply_coupons(cart_hash, coupon_array)
#   # code here
#   coupon_array.each do |i|
# #    binding.pry
#       item = i[:item]

# #   [
# #   {:item => "AVOCADO", :num => 2, :cost => 5.00},
# #   {:item => "BEER", :num => 2, :cost => 20.00},
# #   {:item => "CHEESE", :num => 3, :cost => 15.00}
# # ]
#       binding.pry
      
#       if cart_hash[item] && cart_hash[item][:count]  >= i[:num]
#           if cart_hash[item + " W/COUPON"]
#             cart_hash[item + " W/COUPON"][:count] += 1
#           else
#             cart_hash[item + " W/COUPON"] = {:price => coupon[:cost], :count => 1}
#             cart_hash[item + " W/COUPON"][:clearance] = cart_hash[item][:clearance]
#           end
#           cart_hash[item][:count] -= coupon[:num]
#       end
#     end
#     cart_hash
# end

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