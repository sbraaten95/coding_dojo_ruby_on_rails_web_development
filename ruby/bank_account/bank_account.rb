class BankAccount
	@@accounts = []
	private
	@@interest_rate = 1.7
	def gen_acct_num
		@acct_num = rand(10000..99999)
	end
	public
	def initialize
		gen_acct_num
		@chk_bal = 0
		@sav_bal = 0
		self
	end
	def get_interest_rate
		@@interest_rate
	end
	def get_checking_balance
		@chk_bal
	end
	def get_saving_balance
		@sav_bal
	end
	def checking_deposit(amt)
		@chk_bal += amt
		self
	end
	def saving_deposit(amt)
		@sav_bal += amt
		self
	end
	def checking_withdrawal(amt)
		if (amt > @chk_bal)
			puts 'Not enough money'
			'Error'
		else
			@chk_bal -= amt
			self.get_checking_balance
		end
	end
	def saving_withdrawal(amt)
		if (amt > @sav_bal)
			puts 'Not enough money'
		else
			@sav_bal -= amt
			self.get_saving_balance
		end
	end
	def get_total
		@chk_bal + @sav_bal
	end
	def account_information
		puts @acct_num, self.get_total, self.get_checking_balance, self.get_saving_balance, @@interest_rate
		self
	end
end
account = BankAccount.new
puts account.interest_rate