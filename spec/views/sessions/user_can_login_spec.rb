require 'rails_helper'

feature "User can login", type: :feature do
  include Authentication
  scenario 'logs in' do
    # Creates User account for login
    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')

    login(user)

    expect(page).to have_content 'Events'
  end
end
