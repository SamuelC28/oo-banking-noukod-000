class Transfer
  # create a setter and a getter method for each
  attr_accessor :transfer_amount, :sender, :receiver

  def initialize(sender, receiver, transfer_amount, status)
    @transfer_amount = transfer_amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if @sender.balance > @transfer_amount && @status == "pending"
      @sender.balance -= @transfer_amount
      @receiver.balance += @transfer_amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @transfer_amount
      @receiver.balance -= @transfer_amount
      @status = "reversed"
    end
  end
end
