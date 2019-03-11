class Statement

  attr_reader :date, :credit

  def initialize (time = Time.now, credit = credit)
    @date = time.strftime("%Y/%m/%d")
    @credit = credit
    
  end

end
