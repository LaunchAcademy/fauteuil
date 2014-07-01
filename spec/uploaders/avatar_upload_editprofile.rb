require "rails_helper"

feature "user visits edit profile to update information" do

  scenario "User changes photo" do

    user = FactoryGirl.create(:user)
    login_as(user)
    visit edit_user_registration_path

    attach_file("Avatar", "spec/fixtures/avatar.jpeg")
    expect(page).to have_css("img[src='#{user.avatar_url}']")

    click_button "Update"

    expect(page).to have_content("You updated your account successfully")

  end
end
