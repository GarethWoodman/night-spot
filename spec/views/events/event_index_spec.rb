require 'rails_helper'

feature "Events index", type: :feature do
  scenario 'are listed' do

    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')
    event = Event.create(user_id: user.id, title: 'Party!', content: 'Come to the party!', date: '30/10/2020')

    visit 'events/index'

    expect(page).to have_content 'Party!'

  end
end