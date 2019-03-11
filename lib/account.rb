class Account

  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def deposit(amount)
    @balance += amount
    @statement << {:time => Time.now.strftime("%Y/%m/%d"), :debit => amount, :balance => @balance}
  end

  def withdraw(amount)
    @balance -= amount
  end
end
