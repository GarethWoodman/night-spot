require 'rails_helper'

feature "Events show", type: :feature do
  scenario 'Show event' do

    User.delete_all
    Event.delete_all

    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')
    eventOne = Event.create(user_id: user.id, title: 'Party!', content: 'Come to the party!', date: '30/10/20')
    eventTwo = Event.create(user_id: user.id, title: 'Another Party!', content: 'Cancelled!', date: '30/11/20')


    visit 'events/index'

    click_button 'Party!'

    expect(page).to have_content 'Come to the party!'
  end
end