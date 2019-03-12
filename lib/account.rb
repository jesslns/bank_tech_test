# frozen_string_literal: true

require_relative './statement.rb'
class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    record_transaction('deposit', amount)
  end

  def withdraw(amount)
    @balance -= amount
    record_transaction('withdraw', amount)
  end

  def print_statement
    statement_header
    @transactions.reverse.each do |entry|
      puts entry.date + ' || ' + entry.credit + ' || ' + entry.debit + ' || ' + entry.balance
    end
  end

  private

  def record_transaction(type, amount)
    if type == 'deposit'
      credit = format('%.2f', amount)
      debit = ''
    elsif type == 'withdraw'
      credit = ''
      debit = format('%.2f', amount)
    end
    balance = format('%.2f', @balance)
    @transactions << Statement.new(credit, debit, balance)
  end

  def statement_header
    puts 'date || credit || debit || balance'
  end
end
