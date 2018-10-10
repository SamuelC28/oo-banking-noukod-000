class BankAccount
  attr_accessor :name
  attr_writer :balance

  def initialize(name)
     balance= 1000
    @name = name

    transactions = []
    add_transaction(0)
  end

  def display_balance=(balance)
    @balance = 1000
  end

  def deposit(amount)
    (@balance = @balance + amount) if (amount > 0)
  end

  def display_balance
    balance = 0
    @transactions.each do |transaction|
      balance += transaction
    end
      return balance
    end


  def valid?

  end
  def close_account

  end

end
