def largest_palindrome_product
  lp_product = 0
  999.downto(100) do |num1|
    999.downto(100) do |num2|
      product = num1 * num2
      lp_product = product if product > lp_product && product.to_s == product.to_s.reverse
    end
  end
  lp_product
end