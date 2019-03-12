# frozen_string_literal: true

require 'printer'

describe Printer do
  before do
    @transaction = double :entry
    allow(@transaction).to receive(:date).and_return('11/03/2019')
    allow(@transaction).to receive(:credit).and_return('10.00')
    allow(@transaction).to receive(:debit).and_return('')
    allow(@transaction).to receive(:balance).and_return('10.00')
    @print = Printer.new(@transaction)
    @print.instance_variable_set(:@transactions, [@transaction])
  end

  it 'prints statement' do
    expect do
      @print.statement
    end.to output(
      "date || credit || debit || balance\n" \
      "11/03/2019 || 10.00 ||  || 10.00\n"
    ).to_stdout
  end
end
