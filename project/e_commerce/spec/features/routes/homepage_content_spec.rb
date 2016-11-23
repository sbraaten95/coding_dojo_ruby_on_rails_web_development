require 'rails_helper'
RSpec.describe 'homepage' do
	before do
		visit '/'
	end
	it 'loads the welcome page when provided an empty route' do
		expect(page).to have_text('Welcome!')
	end
	it 'has a button that allows the user to create an account' do
		expect(page).to have_link('Create Account')
	end
	it 'has a button that allows the user to login' do
		expect(page).to have_link('Log In')
	end
end