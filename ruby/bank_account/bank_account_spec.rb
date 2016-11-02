require_relative 'bank_account'

RSpec.describe BankAccount do
	it 'gets the checking balance' do
		account = BankAccount.new
		expect(account.get_checking_balance).to eq(0)
	end
	it 'gets the total balance' do
		account = BankAccount.new
		expect(account.get_total).to eq(0)
	end
	it 'withdraws cash' do
		account = BankAccount.new
		account.checking_deposit(50)
		expect(account.checking_withdrawal(5)).to eq(45)
	end
	it 'throws an error if the user tries to withdraw more cash than there is available' do
		account = BankAccount.new
		expect(account.checking_withdrawal(5)).to eq('Error')
	end
	it 'throws an error if the user tries to access accounts' do
		account = BankAccount.new
		expect{account.accounts}.to raise_error(NoMethodError)
	end
end