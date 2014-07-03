
require 'rails_helper'

feature 'guest sigout' do

  scenario 'user signs out' do

    login_as(FactoryGirl.create(:user), scope: :user)

    visit chairs_path

    click_on 'Sign Out'


    expect(page).to have_content('You need to sign in or sign up before continuing')

  end

end
