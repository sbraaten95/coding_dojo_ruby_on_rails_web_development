require 'rails_helper'
RSpec.describe 'displaying likes' do
  before do
    @user = create_user
    log_in @user
    @secret1 = @user.secrets.create(content: 'Oops', user:@user)
    Like.create(user: @user, secret: @secret1)
  end
  it 'displays unlike button for secrets already liked' do
    visit '/secrets'
    expect(page).to have_text(@secret1.content)
    expect(page).to have_text('2 likes')
    expect(page).to have_button('Unlike')
  end
  it 'deletes like and displays the changes in both profile and secrets page' do
    visit '/secrets'
    click_button 'Unlike'
    click_button 'Unlike'
    expect(current_path).to eq("/secrets")
    visit "/users/#{@user.id}"
  end
  it 'creates like and displays it both in profile and secrets page' do
    visit '/secrets'
  end
end