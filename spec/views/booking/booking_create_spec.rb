require 'rails_helper'

feature "Booking create", type: :feature do
  include Authentication
  scenario 'Create booking' do

    User.delete_all
    Event.delete_all
    Booking.delete_all

    user = User.create(username: 'gareth2020', email: 'gareth.woodman92@gmail.com', password: 'password')
    eventOne = Event.create(user_id: user.id, title: 'Party!', content: 'Come to the party!', date: '30/10/20')

    login(user)

    click_button 'Party!'
    click_button 'Book'
    
    expect(Booking.last.user.username).to eq 'gareth2020'
  end
end