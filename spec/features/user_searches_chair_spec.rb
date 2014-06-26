require 'rails_helper'

feature 'search for chair' do

  let(:user) { FactoryGirl.create(:user) }
  let(:chair) { FactoryGirl.create(:chair)}

  scenario 'valid search by name' do
    chair

    login_as(user)
    visit chairs_path

    fill_in "search", with: "svaar"
    click_button 'Search'
    expect(page).to have_content('svaar')

   end

  scenario 'valid search by location' do

    chair1 = FactoryGirl.create(:chair, location: 'Tokyo')

    login_as(user)
    visit chairs_path

    fill_in "search", with: "Tok"
    click_button 'Search'

    expect(page).to have_content('Tokyo')
  end

  scenario 'search not found' do

    login_as(user)
    visit chairs_path

    fill_in "search", with: "france is the best"
    click_button 'Search'

    expect(page).to have_content('No results')
  end

end
