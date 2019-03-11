require "statement"

describe Statement do
  subject(:statement) { described_class.new }
  before do
    @time = "2019-03-11 14:25:58 +0000"
  end
  it "can store date in YYYY/MM/DD format" do
    allow(statement).to receive(:initialize).and_return(@time)
    expect(statement.date).to eq("2019/03/11")
  end

  context "can store entry details" do
    it {is_expected.to respond_to :credit}
    it {is_expected.to respond_to :debit}
  end
end
