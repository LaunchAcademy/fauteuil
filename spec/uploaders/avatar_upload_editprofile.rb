require "rails_helper"

feature "user visits edit profile to update information" do

  scenario "User updates profile information" do

    user = FactoryGirl.create(:user)
    login_as(user)
    visit edit_user_registration_path

    fill_in "Username", with: "rambo"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    attach_file("Avatar", "spec/fixtures/avatar.jpeg")
    expect(page).to have_css("img[src='#{user.avatar_url}']")

    click_button "Update"

    expect(page).to have_content("You updated your account successfully")

  end
end
