require "account"

describe Account do

  subject(:account) { described_class.new }

  it "can take deposit" do
    expect(account).to respond_to(:deposit).with(1).argument
  end

  it "starts with zero balance" do
    expect(account.balance).to eq(0)
  end

end
