require 'rails_helper'

RSpec.describe "User account register", type: :view do
  describe 'a user can register with an account' do
    #user = User.create(username: "gareth2020", email: 'gareth.woodman92@gmail.com', password: 'password')
    visit '/'
    expect(page).to have_content 'Register'

    fill_in 'user[username]', with: 'gareth2020'
    fill_in 'user[email]', with: 'gareth.woodman92@gmail.com'
    fill_in 'user[password]', with: 'password'
    fill_in 'user[password_confirmation]', with: 'password'
    find('[name=commit]').click

    expect(current_path).to eq '/sessions/new'
  end
end
