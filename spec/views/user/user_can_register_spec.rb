require 'rails_helper'

RSpec.describe "User account register", type: :view do
  describe 'a user can register with an account' do
    user = User.create(fname: 'Gareth', lname: 'Woodman', email: 'gareth.woodman@gmail.com', password: 'password')

    visit '/'

    expect(page).to have_content 'Register'
  end
end
