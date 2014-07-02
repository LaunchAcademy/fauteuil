require 'rails_helper'

feature 'admin visits chairs page to delete review' do

  user = FactoryGirl.create(:user,role: "admin")

  scenario "Admin visits chair page" do
    chair = FactoryGirl.create(:chair)

    login_as(user)
    visit "/chairs/#{chair.id}"
    save_and_open_page

    click_button 'Delete Chair'

    expect(page).to have_content('Chair was deleted')
  end

end





