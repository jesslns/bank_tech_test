class Statement

  attr_reader :date, :credit, :debit

  def initialize (time = Time.now, credit = credit, debit = debit)
    @date = time.strftime("%Y/%m/%d")
    @credit = credit
    @debit = debit
  end

end
