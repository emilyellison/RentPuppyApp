class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_logged_in_user
  before_filter :find_last_bid_option_clicked
   
  def find_logged_in_user
    @current_user = User.find_by_id(session[:cookie])
  end
   
  def find_last_bid_option_clicked
    @walk_option = Walk.find_by_id(session[:walk_option])
  end
  
end
