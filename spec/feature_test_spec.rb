require 'account'
require 'printer'
require 'statement'

describe Account do

  it "allows user to open a new account and deposit and withdraw money" do
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)
    # Stub the dates in transactions
    allow(account.transactions[0]).to receive(:date).and_return('11/03/2019')
    allow(account.transactions[1]).to receive(:date).and_return('11/03/2019')

    expect { account.print_statement }.to output(
      "date || credit || debit || balance\n" +
      "11/03/2019 ||  || 500.00 || 500.00\n" +
      "11/03/2019 || 1000.00 ||  || 1000.00\n"
    ).to_stdout
  end
end
