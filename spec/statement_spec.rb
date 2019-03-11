require "statement"

describe Statement do
  # subject(:statement) { described_class.new }
  before do
    @time = "2019-03-11 14:25:58 +0000"
    @credit = double (:credit)
    @debit = double (:debit)
    @balance = double (:balance)
    @statement = Statement.new(@credit, @debit, @balance)
  end
  it "can store date in YYYY/MM/DD format" do
    allow(@statement).to receive(:initialize).and_return(@time)
    expect(@statement.date).to eq("11/03/2019")
  end

  context "It store statement details" do
    it "records credit amount" do
      expect(@statement.credit).to eq(@credit)
    end

    it "records debit amount" do
      expect(@statement.debit).to eq(@debit)
    end

    it "records balance" do
      expect(@statement.balance).to eq(@balance)
    end
  end

end
