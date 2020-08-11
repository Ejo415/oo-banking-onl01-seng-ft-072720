class Transfer
  attr_accessor :sender, :receiver, :amount, :account, :status
  def initialize(sender, receiver, amount)
   
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    
  end 
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else false 
    end
  end
  
  def execute_tranaction 
    
  end
  
end
