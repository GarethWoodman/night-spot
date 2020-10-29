require 'rails_helper'

module Authentication
  def login(user)
    visit 'sessions/new'

    expect(page).to have_content 'Login'

    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end
end