require "account"

describe Account do

  subject(:account) { described_class.new }
  before do
    @statement = double(:statement)
  end

  it "starts with zero balance" do
    expect(account.balance).to eq(0)
  end

  it "updates balance after a deposit is made" do
    expect{account.deposit(1)}.to change{account.balance}.by(1)
  end

  it "can withdaw money" do
    account.deposit(1)
    expect{account.withdraw(1)}.to change{account.balance}.by(-1)
  end

  it "records transaction in the statement" do
    account.deposit(1)
    allow(account).to receive(:statement).and_return([@statement])
    expect(account.statement[-1]).to eq(@statement)
  end

end
