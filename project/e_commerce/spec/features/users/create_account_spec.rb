require 'rails_helper'
RSpec.describe 'creating an account' do
	before do
		visit root_path
		click_link 'Create Account'
	end
	it 'should have Create Account displayed as text and a form to create a new account' do
		expect(page).to have_text('Create Account')
		expect(page).to have_field('Name')
		expect(page).to have_field('Email')
		expect(page).to have_field('Password')
		expect(page).to have_field('Password confirmation')
	end
end