# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'starts with zero balance' do
    expect(account.balance).to eq(0)
  end

  it 'updates balance after a deposit is made' do
    account.deposit(1)
    expect { account.deposit(1) }.to change { account.balance }.by(1)
  end

  it 'can withdaw money' do
    account.deposit(1)
    expect { account.withdraw(1) }.to change { account.balance }.by(-1)
  end

  describe 'Statement functions' do
    it 'records deposit transaction in the statement' do
      account.deposit(1)
      expect(account.statements[-1].credit).to eq(1)
      expect(account.statements[-1].debit).to eq(nil)
      expect(account.statements[-1].balance).to eq(1)
    end
    it 'records withdrawal transaction in the statement' do
      account.deposit(10)
      account.withdraw(5)
      expect(account.statements[-1].credit).to eq(nil)
      expect(account.statements[-1].debit).to eq(5)
      expect(account.statements[-1].balance).to eq(5)
    end
  end

  describe 'Print statements' do
    it 'prints statement' do
      @entry = double :entry
      allow(@entry).to receive(:date).and_return('11/03/2019')
      allow(@entry).to receive(:credit).and_return(10)
      allow(@entry).to receive(:debit).and_return(nil)
      allow(@entry).to receive(:balance).and_return(10)
      account.instance_variable_set(:@statements, [@entry])
      expect do
        account.print_statement
      end.to output(
        "Date || " + "credit || " + "debit || " + "balance\n" +
        "11/03/2019 || 10 ||  || 10\n"
      ).to_stdout
    end
  end
end
