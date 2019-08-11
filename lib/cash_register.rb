class CashRegister 
  attr_accessor :total, :discount, :price, :quantity, :items  
  def initialize(discount=nil) 
    @total = 0 
    @discount = discount
   @items =[]
   @transactions = []
  end 
  
  def add_item(title, price, quantity=1) 
    quantity.times do
    @items << title
  end 
    @total += price * quantity 
  end 
  @transactions << {quantity: quantity, amount: price*quantity}
  
  def apply_discount 
    if discount 
  @total = @total - (@discount/100.to_f * @total).to_i
   "After the discount, the total comes to $#{@total}." 
else 
   "There is no discount to apply."
end 
 end 
  def void_last_transaction 
    last_transaction = @transactions.pop 
    @total -= last_transaction[:amount] 
    last_transaction[:quamtity].times do 
      @items.pop 
    end 
    @total 
  end 
    
  end 
 end 