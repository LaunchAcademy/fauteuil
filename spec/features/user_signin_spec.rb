
require 'rails_helper'

feature 'guest signup' do

  scenario 'user signs in' do


    user = FactoryGirl.create(:user)

    visit new_user_session_path

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'

    expect(page).to have_content("Signed in as #{user.email}")


  end

  scenario 'unregistered user attempts to sign in' do

    visit new_user_session_path


    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Password', with: '12345678'
    click_button 'Sign in'


    expect(page).to have_content('Invalid email or password')

  end

end
