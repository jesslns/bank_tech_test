require "statement"

describe Statement do
  subject(:statement) { described_class.new }
  before do
    @time = "2019-03-11 14:25:58 +0000"
  end
  it "can store date" do
    allow(statement).to receive(:initialize).and_return(@time)
    expect(statement.date).to eq("2019/03/11")
  end
end
