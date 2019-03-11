class Account

  attr_reader :balance, :statements

  def initialize
    @balance = 0
    @statements = []
  end

  def deposit(amount)
    @balance += amount
    credit = amount
    debit = nil
    @statements << Statement.new(credit, debit, @balance)
  end

  def withdraw(amount)
    @balance -= amount
  end

end
