class CashRegister 
  attr_accessor :total, :discount, :price, :quantity, :items  
  def initialize(discount=nil) 
    @total = 0 
    @discount = discount
   @items =[]
  end 
  
  def add_item(title, price, quantity=1) 
    quantity.times.do
    @items << title
  end 
    @total += price * quantity 
  end 
  
  def apply_discount 
    if @discount 
  @total = @total - (@discount/100.to_f * @total).to_i
   "After the discount, the total comes to $#{total}." 
else 
   "There is no discount to apply."
end 
   end 
 end 