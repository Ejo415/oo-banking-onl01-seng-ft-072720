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
    if sender.valid? == false 
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
      elsif @status == "complete"
      "Transaction was already executed."
    else
      sender.deposit(amount)
      
    end
  end
  
end
