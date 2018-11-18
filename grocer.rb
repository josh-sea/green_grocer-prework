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
  
    coupon_array.each do |ckeys, cvalues|
      cart_hash.each do |item, item_info|
        if cvalues == item && coupon_array[i][:num] <= cart_hash[item][:count]
 #         binding.pry
          discount = "#{item} W/COUPON"
#         binding.pry 
          new_hash[discount] = {
            :price =>i[:cost],
            :clearance => cart_hash[item][:clearance],
            :count => (cart_hash[item][:count]/coupon_array[i][:num])
          }
#          binding.pry
          cart_hash[item][:count] =  (cart_hash[item][:count] % i[:num])
        end
      end
     end
   end
  cart_hash.merge(new_hash)
end

def apply_clearance(cart_hash)
  # code here
  cart_hash.each do |item, item_info|
    item_info.each do |ckeys, cvalues|
      if cart_hash[item][ckeys] == true
        price = (cart_hash[item][:price] - cart_hash[item][:price] * 0.2).round(2)
        cart[item][:price] = price
      else
        next
      end
    end
  end
  cart
end

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