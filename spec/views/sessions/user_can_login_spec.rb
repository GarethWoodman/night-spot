require 'rails_helper'

feature "User can login", type: :feature do
  scenario 'a user can register with an account' do
    # Creates User account for login
    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')

    visit '/sessions/new'

    expect(page).to have_content 'Log in'

    fill_in 'user[email]', with: 'gareth.woodman92@gmail.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Log in'
  end
end
