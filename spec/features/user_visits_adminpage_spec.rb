require "rails_helper"

feature "admin wants to see list of users" do

  scenario "unregistered user attempts view adminpage" do

    user = FactoryGirl.create(:user)

    login_as(user)

    expect { visit admin_users_path(user) }.to raise_error
    (ActionController::RoutingError)

  end

end
