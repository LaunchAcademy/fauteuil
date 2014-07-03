class Admin::UsersController < ApplicationController
  before_action :authorize_user , only: [:index]

  def index
    @users = User.all
  end


 private

  def authorize_user
    unless user_signed_in? && current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end

end
