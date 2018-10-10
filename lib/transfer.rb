class Transfer
  attr_accessor :transfer, :sender, :receiver

  def initialize(transfer_amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
end
