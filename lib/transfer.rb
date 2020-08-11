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
  
  def execute_transaction 
    if valid? 
      @sender.deposit(@amount * -1)
      @receiver.deposit(@amount)
      @status = "complete"
     
     
      elsif @status == "complete"
      puts "Transaction was already executed."
   
    else
       @status = "rejected"
     puts "Transaction rejected. Please check your account balance."
     
    end
  end
  
end
