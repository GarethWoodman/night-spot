require 'rails_helper'

feature "Events new", type: :feature do
  include Authentication
  scenario 'Create event' do

    User.delete_all
    Event.delete_all

    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')

    login(user)

    click_button 'New Event'
    expect(page).to have_content 'Create Event'

    fill_in 'event[title]', with: 'Party!'
    fill_in 'event[content]', with: 'Come to the party!'
    fill_in 'event[date]', with: '30/10/2020'
    click_button 'Create'

    expect(Event.last.title).to eq 'Party!'
    expect(Event.last.user.username).to eq 'gareth2020'
  end
end