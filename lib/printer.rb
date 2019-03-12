require_relative "./account.rb"

class Printer

  attr_reader :transactions

  def initialize (transactions)
    @transactions = transactions
  end

  def statement
    statement_header
    @transactions.reverse.each do |entry|
      puts entry.date + ' || ' + entry.credit + ' || ' + entry.debit + ' || ' + entry.balance
    end
  end

  def statement_header
    puts 'date || credit || debit || balance'
  end
end
