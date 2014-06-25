require 'rails_helper'

feature 'user visits chairs new page to add a photo of a chair' do

  scenario 'User loads photo' do

    visit '/chairs/new'

    attach_file('picture', 'spec/fixtures/avatar.jpeg')

    click_button 'Add Chair'

    expect(page).to have_content('Success!.')

  end
end
