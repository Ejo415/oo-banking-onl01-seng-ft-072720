class Transfer
  attr_accessor :sender, :receiver, :amount, :account, :status
  def initialize(sender, receiver, amount)
   
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    
  end 
  
  def valid?
   sender.valid? && receiver.valid?
  end
  
  def reject_transfer
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
  
  def execute_transaction 
    if @sender.balance < @amount && @sender.valid? == false
      @status = "rejected"
     puts "Transaction rejected. Please check your account balance."
     
      elsif @status == "complete"
      puts "Transaction was already executed."
   
    else
      @sender.deposit(@amount * -1)
      @receiver.deposit(@amount)
      @status = "complete"
    end
  end
  
end
