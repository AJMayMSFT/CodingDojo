require_relative 'bank_account'
RSpec.describe BankAccount do
  before :each do
    @ba = BankAccount.new
  end

  it 'has a method for retrieving checking account balance' do
    # ba = BankAccount.new
    expect(@ba.get_checking).to eq(100)
  end
  it 'has a method for retrieving the total account balance' do
    # ba = BankAccount.new
    expect(@ba.display_balance).to eq("Total: $150")
  end
  it 'has a method that allow user to withdraw cash' do
    # ba = BankAccount.new
    expect(@ba.withdraw(20, 'checking').get_checking).to eq(80)
  end
  it 'raises an error if user tries to print how many accounts there are' do
    # ba = BankAccount.new
    expect{@ba.num_of_accounts}.to raise_error(NoMethodError)
  end
  it 'raises an error if user tries to set an attribute' do
    # ba = BankAccount.new
    expect{@ba.checking_balance = 2000}.to raise_error(NoMethodError)
  end
end
