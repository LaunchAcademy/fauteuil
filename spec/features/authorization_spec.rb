require 'rails_helper'

feature "user must be authorized to access certain pages", %q(

) do


  scenario "unregistered user cannot access admin page" do
   assert(ActionController::RoutingError) {
    visit admin_users_path
  }
  end
end
