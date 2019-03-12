# frozen_string_literal: true

class Statement
  attr_reader :date, :credit, :debit, :balance

  DEFAULT_DATE = Time.now.strftime('%d/%m/%Y')

  def initialize(date = DEFAULT_DATE, credit, debit, balance)
    @date = date
    @credit = credit
    @debit = debit
    @balance = balance
  end
end
