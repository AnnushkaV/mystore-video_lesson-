class AdminController < ApplicationController
  before_filter :check_if_admin
 def index
   @products = Product.all
   respond_to do |format|
     format.html
     format.json { render json:@products }
   end
 end

  def show

  end
  def users_count
    @users_count = User.count
    render layout "admin"
  end


end
