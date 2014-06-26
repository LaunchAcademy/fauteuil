require 'rails_helper'

feature 'search for chair' do

  let(:user) { FactoryGirl.create(:user) }
  let(:chair) { FactoryGirl.create_list(:chair, 6)}

  scenario 'valid search by name' do
    chair

    login_as(user)
    visit chairs_path

    fill_in "search", with: "svaar"
    click_button 'Search'

    n = 0

    6.times do
       n += 1
      expect(page).to have_content( 'svaar ' +  n.to_s )
    end
   end

  scenario 'valid search by location' do
    chair1 = FactoryGirl.create(:chair, location: 'Tokyo')

    login_as(user)
    visit chairs_path

    fill_in "search", with: "Tok"
    click_button 'Search'

    expect(page).to have_content('Tokyo')
  end

end
