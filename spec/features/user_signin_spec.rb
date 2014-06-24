
require 'rails_helper'

feature 'guest signup' do

  scenario 'user enters email and password' do

    visit new_user_session_path


    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Password', with: '12345678'
    click_button 'Sign in'


    expect(page).to have_content('Register or Sign in Invalid email or password. Sign in Email Password Remember me Sign up Forgot your password?')

  end

end
