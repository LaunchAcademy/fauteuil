require 'rails_helper'

feature 'user visits chairs page to view a photo of a chair' do

  scenario "User visits chair page" do

    chairs = FactoryGirl.create_list(:chair, 6)
    user = FactoryGirl.create(:user)

    login_as(user)

    visit chairs_path

    chairs.each do |chair|
      expect(page).to have_content(chair.name, chair.picture)
    end
  end
end




