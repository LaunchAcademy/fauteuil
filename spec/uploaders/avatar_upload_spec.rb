require "rails_helper"

feature "user visits registration uploads photo" do

  scenario "User loads photo" do

    user = FactoryGirl.create(:user)

    visit new_user_registration_path

    fill_in "Username", with: "rambo"
    fill_in "Email", with: "bob@example.com"
    fill_in "Password", with: "12345678"
    fill_in "Password confirmation", with: "12345678"
    attach_file("Avatar", "spec/fixtures/avatar.jpeg")

    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully.")

  end
end



