require "rails_helper"

feature "admin wants to see list of users" do

  scenario "Admin visits admin user page" do

    user = FactoryGirl.create(:user, role: "admin")

    login_as(user)

    visit admin_users_path

    expect(page).to have_content(user.username)
    expect(page).to have_content(user.email)

  end

end
