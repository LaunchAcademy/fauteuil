require "rails_helper"

feature "admin wants to see list of users" do

  user = FactoryGirl.create(:user,role: "admin")

  scenario "Admin visits admin user page" do
    login_as(user)

    visit admin_users_path


    expect(page).to have_content(user.username)
    expect(page).to have_content(user.email)

  end

  scenario 'unregistered user attempts view adminpage' do

    login_as(user)

    visit admin_users_path
    save_and_open_page

    expect(page).to have_content('Not Found')

  end

end
