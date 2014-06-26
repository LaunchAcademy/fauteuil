require 'rails_helper'

feature 'user visits chairs page to view a photo of a chair' do

  scenario "User visits chair page" do

    chair = FactoryGirl.create(:chair)

    user = FactoryGirl.create(:user)
    login_as(user)
    visit chairs_path

    expect(page).to have_content(chair.name,chair.description,
      chair.manufacturer,chair.location, chair.picture)

  end

end






