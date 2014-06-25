require 'rails_helper'

feature 'user visits chairs new page to add a photo of a chair' do

  scenario 'User loads photo' do

    user = FactoryGirl.create(:user)
    login_as(user)

    visit '/chairs/new'

    save_and_open_page
    attach_file('Picture', 'spec/fixtures/avatar.jpeg')

    click_button 'Add Chair'

    expect(page).to have_content('Success!.')

  end
end
