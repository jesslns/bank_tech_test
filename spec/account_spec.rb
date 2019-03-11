require "account"

describe Account do

  subject(:account) { described_class.new }

  it "can take deposit" do
    expect(account).to respond_to(:deposit).with(1).argument 
  end

end
