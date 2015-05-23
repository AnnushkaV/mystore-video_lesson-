class AdminController < ApplicationController
  before_filter :check_if_admin


  def users_count
    @users_count = User.count
    layout "admin"
  end

end
