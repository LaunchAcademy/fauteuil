require "rails_helper"

feature "admin wants to see list of users" do

  user = FactoryGirl.create(:user)

  scenario "unregistered user attempts view adminpage" do

    login_as(user)

    expect { visit admin_users_path(user) }.to raise_error
    (ActionController::RoutingError)

  end

end
