require 'rails_helper'

feature 'user visits chairs page to view a photo of a chair' do

  let(:user) { FactoryGirl.create(:user) }

  scenario "User visits chair page" do
    chair = FactoryGirl.create(:chair)

    login_as(user)
    visit chairs_path

    page.find("#chair_#{chair.id}")['style'].should == "background-image: url(#{chair.picture_url});"
  end

end
