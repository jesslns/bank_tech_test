require "account"

describe Account do

  subject(:account) { described_class.new }

  it "can take deposit" do
    expect(account).to respond_to(:deposit).with(1).argument
  end

  it "starts with zero balance" do
    expect(account.balance).to eq(0)
  end

  it "updates balance after a deposit is made" do
    expect{account.deposit(1)}.to change{account.balance}.by(1)
  end

end
