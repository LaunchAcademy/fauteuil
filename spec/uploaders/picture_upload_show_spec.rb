require 'rails_helper'

feature 'user visits chairs page to view a photo of a chair' do

  scenario "User visits chair page" do

    visit chairs_path

    page.should have_content("picture")

  end
end
