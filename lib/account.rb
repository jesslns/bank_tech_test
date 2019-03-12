# frozen_string_literal: true

require_relative './statement.rb'
class Account
  attr_reader :balance, :statements

  def initialize
    @balance = 0
    @statements = []
  end

  def deposit(amount)
    @balance += amount
    credit = '%.2f' % amount
    debit = ''
    balance = '%.2f' % @balance
    update_statement(credit, debit, balance)
  end

  def withdraw(amount)
    @balance -= amount
    credit = ''
    debit = '%.2f' % amount
    balance = '%.2f' % @balance
    update_statement(credit, debit, balance)
  end

  def update_statement(credit, debit, balance)
    @statements << Statement.new(credit, debit, balance)
  end

  def print_statement
    statement_header
    @statements.reverse.each do |entry|
      puts entry.date + ' || ' + entry.credit + ' || ' + entry.debit + ' || ' + entry.balance.to_s
    end
  end

private

  def statement_header
    puts "Date || " + "credit || " + "debit || " + "balance"
  end
end
