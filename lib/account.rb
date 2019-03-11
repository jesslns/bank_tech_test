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
    credit = nil
    debit = amount
    @statements << Statement.new(credit, debit, @balance)
  end

  def print_statement
    @statements.reverse.each{
      |entry| puts "#{entry.date}" + " || #{entry.credit}" + " || #{entry.debit}" + " || #{entry.balance}"
    }
  end

end
