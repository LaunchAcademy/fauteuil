require "rails_helper"

include Warden::Test::Helpers
Warden.test_mode!

feature "user visits edit profile changes photo" do

  scenario "User changes photo" do

    user = FactoryGirl.create(:user)
    login_as(user)

    visit edit_user_registration_path
    fill_in "Username", with: "rambo"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    attach_file("Avatar", "spec/fixtures/avatar.jpeg")

    click_button "Update"
    save_and_open_page

    expect(page).to have_content("You updated your account successfully")
  end
end



