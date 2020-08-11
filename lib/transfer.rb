class Transfer
  attr_accessor :sender, :receiver, :amount, :account, :status
  def initialize(sender, receiver, amount)
   
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    
  end 
  
  def valid?
    if sender.
  
end
