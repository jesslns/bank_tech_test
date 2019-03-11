class Statement

  attr_reader :date, :credit, :debit, :balance

  def initialize (time = Time.now)
    @date = time.strftime("%Y/%m/%d")
  end

end
