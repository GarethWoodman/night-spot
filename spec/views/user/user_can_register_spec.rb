require 'rails_helper'

feature "User account register", type: :feature do
  scenario 'a user can register with an account' do
    visit '/'
    expect(page).to have_content 'Registration'

    fill_in 'user[username]', with: 'gareth2020'
    fill_in 'user[email]', with: 'gareth.woodman92@gmail.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    click_button 'Create'

    expect(User.last.username).to eq 'gareth2020'
  end
end
