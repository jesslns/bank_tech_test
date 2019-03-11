class Statement

  attr_reader :date

  def initialize (time = Time.now)
    @date = time.strftime("%Y/%m/%d")
  end

end
