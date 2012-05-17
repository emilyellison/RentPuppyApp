class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by_username(params[:username])
    
    if user && user.authenticate(params[:password])
      session[:cookie] = user.id
      redirect_to home_url, :notice => "Welcome back, #{user.firstname}!"
    else
      redirect_to new_session_url, :notice => 'Invalid username/password.'
    end
  end
  
  def destroy
    reset_session
    redirect_to home_url, :notice => 'Come back soon!'
  end
  
end