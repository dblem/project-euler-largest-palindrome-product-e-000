class LargestPalindromeProduct

  def initialize(input = nil)
    @lp_product = 0
  end

  def palindrome?
    @product.to_s == @product.to_s.reverse ? true : false
  end

  def answer
    999.downto(100) do |num1|
      999.downto(100) do |num2|
        @product = num1 * num2
        @lp_product = @product if @product > @lp_product && palindrome?
      end
    end
    @lp_product
  end

end