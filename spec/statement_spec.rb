# frozen_string_literal: true

require 'statement'

describe Statement do
  # subject(:statement) { described_class.new }
  before do
    @credit = double :credit
    @debit = double :debit
    @balance = double :balance
    # allow(@time).to receive(:initialize).and_return(@time)
    @statement = Statement.new('11/03/2019', @credit, @debit, @balance)
  end
  it 'can store date in YYYY/MM/DD format' do
    expect(@statement.date).to eq('11/03/2019')
  end

  context 'It store statement details' do
    it 'records credit amount' do
      expect(@statement.credit).to eq(@credit)
    end

    it 'records debit amount' do
      expect(@statement.debit).to eq(@debit)
    end

    it 'records balance' do
      expect(@statement.balance).to eq(@balance)
    end
  end
end
