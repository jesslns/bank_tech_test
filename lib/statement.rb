class Statement

  attr_reader :date, :credit, :debit, :balance

  def initialize (time = Time.now, credit, debit, balance)
    @date = time.strftime("%Y/%m/%d")
    @credit = credit
    @debit = debit
    @balance = balance
  end

end
