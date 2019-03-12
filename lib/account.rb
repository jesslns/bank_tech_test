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
    credit = amount
    debit = nil
    update_statement(credit, debit)
  end

  def withdraw(amount)
    @balance -= amount
    credit = nil
    debit = amount
    update_statement(credit, debit)
  end

  def update_statement(credit, debit)
    @statements << Statement.new(credit, debit, @balance)
  end

  def print_statement
    statement_header
    @statements.reverse.each do |entry|
      puts entry.date.to_s + ' || ' + entry.credit.to_s + ' || ' + entry.debit.to_s + ' || ' + entry.balance.to_s
    end
  end

private
  def statement_header
    puts "Date || " + "credit || " + "debit || " + "balance"
  end
end
