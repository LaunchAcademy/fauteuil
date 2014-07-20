
require 'rails_helper'

feature 'user edits profile' do

  scenario 'successfully fills out edit form' do

    user = FactoryGirl.create(:user)

    login_as(user)

    visit edit_user_registration_path

    fill_in 'Username', with: 'BobDob'
    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password

    click_button 'Update'

    expect(page).to have_content('You updated your account successfully.')
  end

  scenario 'leaves password blank' do

    user = FactoryGirl.create(:user)

    login_as(user)

    visit edit_user_registration_path

    fill_in 'Username', with: 'BobDob'
    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Password', with: ''

    click_button 'Update'

    expect(page).to have_content("can't be blank")
  end

  scenario 'does not confirm password' do

    user = FactoryGirl.create(:user)

    login_as(user)

    visit edit_user_registration_path

    fill_in 'Username', with: 'BobDob'
    fill_in 'Email', with: 'bob@example.com'
    fill_in 'Password', with: user.password

    click_button 'Update'

    expect(page).to have_content("Password confirmation doesn't match Password")
  end

end
