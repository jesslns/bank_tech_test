# frozen_string_literal: true

require_relative './statement.rb'
require_relative './printer.rb'

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
    print = Printer.new(@transactions)
    print.statement
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
end
