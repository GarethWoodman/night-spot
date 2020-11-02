require 'rails_helper'

feature "User Profile", type: :feature do
  include Authentication
  scenario 'can access their profile page' do
    User.delete_all
    Event.delete_all

    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')

    login(user)

    click_button 'Profile'

    expect(page).to have_content 'gareth2020'
  end
end
