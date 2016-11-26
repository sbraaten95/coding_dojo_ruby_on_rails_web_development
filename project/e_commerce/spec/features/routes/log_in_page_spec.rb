require 'rails_helper'
RSpec.describe 'log in page' do
	before do
		visit root_path
		click_link 'Log In'
	end
	it 'should have Log In displayed as text and a form to log in' do
		expect(page).to have_text('Log In')
		expect(page).to have_field('email')
		expect(page).to have_field('password')
	end
end