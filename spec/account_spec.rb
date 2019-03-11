require "account"

describe Account do

  subject(:account) { described_class.new }

  it "starts with zero balance" do
    expect(account.balance).to eq(0)
  end

  it "updates balance after a deposit is made" do
    expect{account.deposit(1)}.to change{account.balance}.by(1)
  end

end
